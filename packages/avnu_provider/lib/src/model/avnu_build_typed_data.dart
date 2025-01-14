import 'package:freezed_annotation/freezed_annotation.dart';

import 'json_rpc_api_error.dart';

part 'avnu_build_typed_data.freezed.dart';
part 'avnu_build_typed_data.g.dart';

@freezed
class AvnuBuildTypedData with _$AvnuBuildTypedData {
  const factory AvnuBuildTypedData({
    required Map<String, List<TypeDefinition>> types,
    required String primaryType,
    required Domain domain,
    required Message message,
  }) = _AvnuBuildTypedData;

  factory AvnuBuildTypedData.fromJson(Map<String, dynamic> json) =>
      _$AvnuBuildTypedDataFromJson(json);
}

@freezed
class TypeDefinition with _$TypeDefinition {
  const factory TypeDefinition({
    required String name,
    required String type,
  }) = _TypeDefinition;

  factory TypeDefinition.fromJson(Map<String, dynamic> json) =>
      _$TypeDefinitionFromJson(json);
}

@freezed
class Domain with _$Domain {
  const factory Domain({
    required String name,
    required String version,
    required String chainId,
  }) = _Domain;

  factory Domain.fromJson(Map<String, dynamic> json) =>
      _$DomainFromJson(json);
}

@freezed
class Message with _$Message {
  const factory Message({
    required String caller,
    required String nonce,
    @JsonKey(name: 'execute_after') required String executeAfter,
    @JsonKey(name: 'execute_before') required String executeBefore,
    @JsonKey(name: 'calls_len') required int callsLen,
    required List<Call> calls,
  }) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);
}

@freezed
class Call with _$Call {
  const factory Call({
    required String to,
    required String selector,
    @JsonKey(name: 'calldata_len') required int calldataLen,
    required List<String> calldata,
  }) = _Call;

  factory Call.fromJson(Map<String, dynamic> json) =>
      _$CallFromJson(json);
}
