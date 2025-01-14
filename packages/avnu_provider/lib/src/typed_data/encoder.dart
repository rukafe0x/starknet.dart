import 'package:starknet/starknet.dart';

import 'typed_data_field.dart';
import 'revision.dart';
import 'utils.dart';
import 'dart:convert';
List<Felt> encodeData({
  required Map<String, List<TypedDataField>> types,
  required String type,
  required Map<String, dynamic> data,
  Revision revision = Revision.legacy,
}) {
  final List<Felt> result = [];
  
  // Handle arrays (type ends with '*')
  if (type.endsWith('*')) {
    final baseType = type.substring(0, type.length - 1);
    // Check if data is a Map with a 'value' key containing the array
    final array = data is Map ? (data['value'] as List<dynamic>) : (data as List<dynamic>);
    
    for (final element in array) {
      // final encodedElement = encodeData(
      //   types: types,
      //   type: baseType,
      //   // Explicitly cast Map to Map<String, dynamic>
      //   data: element is Map ? Map<String, dynamic>.from(element) : {'value': element},
      //   revision: revision,
      // );
      final encodedElement = encodeAsFelt(element);
      result.add(encodedElement);
    }
    return result;
  }

  // Handle struct types
  if (types.containsKey(type)) {
    final fields = types[type]!;
    for (final field in fields) {
      final value = data[field.name];
      if (field.type == 'felt') {
        if (value is String && value.startsWith('0x')) {
          result.add(Felt.fromHexString(value));
        } else {
          result.add(encodeAsFelt(value));
        }
      } else {
        final encodedField = encodeData(
          types: types,
          type: field.type,
          // Explicitly cast Map to Map<String, dynamic>
          data: value is Map ? Map<String, dynamic>.from(value) : {'value': value},
          revision: revision,
        );
        result.addAll(encodedField);
      }
    }
    final encodedType = encodeType(types,type, revision);
    //expected: "StarknetDomain(name:felt,version:felt,chainId:felt)"
    result.add(starknetKeccak(utf8.encode(encodedType)));
  }
  return result;
}

// export type StarknetEnumType = {
//     name: string;
//     type: 'enum';
//     contains: string;
// };
class StarknetEnumType {
  final String name;
  final String type;
  final String contains;

  StarknetEnumType({required this.name, required this.type, required this.contains});
}

String encodeType(Map<String, List<TypedDataField>> types, String type, [Revision revision = Revision.legacy]) {
  final allTypes = revision == Revision.active
      ? {...types}
      : types;

  final dependencies = getDependencies(allTypes, type, null, null, revision);
  final primary = dependencies[0];
  final remainingDeps = dependencies.sublist(1);
  
  final newTypes = primary == null ? [] : [primary, ...remainingDeps..sort()];
  
  final esc = revisionConfigurations[revision]!.escapeTypeString;
  
  return newTypes.map((dependency) {
    final dependencyElements = allTypes[dependency]!.map((t) {
      final targetType = (t.type == 'enum' && revision == Revision.active)
          ? (t as StarknetEnumType).contains
          : t.type;
          
      // Handle parentheses for enum variant types
      final typeString = targetType.startsWith('(') && targetType.endsWith(')')
          ? '(${targetType.substring(1, targetType.length - 1).split(',').map((e) => e.isNotEmpty ? esc(e) : e).join(',')})'
          : esc(targetType);
          
      return '${esc(t.name)}:$typeString';
    }).join(',');
    
    return '${esc(dependency)}($dependencyElements)';
  }).join('');
}

List<String> getDependencies(
  Map<String, List<TypedDataField>> types,
  String type, [
  List<String>? dependencies,
  String? contains,
  Revision revision = Revision.legacy,
]) {
  // Initialize dependencies if null
  dependencies ??= [];
  
  // Handle pointers (struct arrays)
  if (type.endsWith('*')) {
    type = type.substring(0, type.length - 1);
  } else if (revision == Revision.active) {
    // Handle enum base
    if (type == 'enum') {
      type = contains!;
    }
    // Handle enum element types
    else if (type.startsWith('(') && type.endsWith(')')) {
      type = type.substring(1, type.length - 1);
    }
  }

  if (dependencies.contains(type) || !types.containsKey(type)) {
    return dependencies;
  }

  // Process dependencies recursively
  final result = [type];
  
  for (final t in types[type]!) {
    final deps = getDependencies(
      types,
      t.type,
      result,
      (t is StarknetEnumType) ? (t as StarknetEnumType).contains : null,
      revision,
    );
    
    // Add only new dependencies
    result.addAll(deps.where((dep) => !result.contains(dep)));
  }

  return result;
}

  