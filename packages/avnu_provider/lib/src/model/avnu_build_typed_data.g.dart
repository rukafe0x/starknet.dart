// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'avnu_build_typed_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AvnuBuildTypedDataImpl _$$AvnuBuildTypedDataImplFromJson(
        Map<String, dynamic> json) =>
    _$AvnuBuildTypedDataImpl(
      types: (json['types'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
            k,
            (e as List<dynamic>)
                .map((e) => TypeDefinition.fromJson(e as Map<String, dynamic>))
                .toList()),
      ),
      primaryType: json['primaryType'] as String,
      domain: Domain.fromJson(json['domain'] as Map<String, dynamic>),
      message: Message.fromJson(json['message'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AvnuBuildTypedDataImplToJson(
        _$AvnuBuildTypedDataImpl instance) =>
    <String, dynamic>{
      'types': instance.types,
      'primaryType': instance.primaryType,
      'domain': instance.domain,
      'message': instance.message,
    };

_$TypeDefinitionImpl _$$TypeDefinitionImplFromJson(Map<String, dynamic> json) =>
    _$TypeDefinitionImpl(
      name: json['name'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$$TypeDefinitionImplToJson(
        _$TypeDefinitionImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
    };

_$DomainImpl _$$DomainImplFromJson(Map<String, dynamic> json) => _$DomainImpl(
      name: json['name'] as String,
      version: json['version'] as String,
      chainId: json['chainId'] as String,
    );

Map<String, dynamic> _$$DomainImplToJson(_$DomainImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'version': instance.version,
      'chainId': instance.chainId,
    };

_$MessageImpl _$$MessageImplFromJson(Map<String, dynamic> json) =>
    _$MessageImpl(
      caller: json['caller'] as String,
      nonce: json['nonce'] as String,
      executeAfter: json['execute_after'] as String,
      executeBefore: json['execute_before'] as String,
      callsLen: (json['calls_len'] as num).toInt(),
      calls: (json['calls'] as List<dynamic>)
          .map((e) => Call.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MessageImplToJson(_$MessageImpl instance) =>
    <String, dynamic>{
      'caller': instance.caller,
      'nonce': instance.nonce,
      'execute_after': instance.executeAfter,
      'execute_before': instance.executeBefore,
      'calls_len': instance.callsLen,
      'calls': instance.calls,
    };

_$CallImpl _$$CallImplFromJson(Map<String, dynamic> json) => _$CallImpl(
      to: json['to'] as String,
      selector: json['selector'] as String,
      calldataLen: (json['calldata_len'] as num).toInt(),
      calldata:
          (json['calldata'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$CallImplToJson(_$CallImpl instance) =>
    <String, dynamic>{
      'to': instance.to,
      'selector': instance.selector,
      'calldata_len': instance.calldataLen,
      'calldata': instance.calldata,
    };
