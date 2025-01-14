// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'avnu_build_typed_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AvnuBuildTypedData _$AvnuBuildTypedDataFromJson(Map<String, dynamic> json) {
  return _AvnuBuildTypedData.fromJson(json);
}

/// @nodoc
mixin _$AvnuBuildTypedData {
  Map<String, List<TypeDefinition>> get types =>
      throw _privateConstructorUsedError;
  String get primaryType => throw _privateConstructorUsedError;
  Domain get domain => throw _privateConstructorUsedError;
  Message get message => throw _privateConstructorUsedError;

  /// Serializes this AvnuBuildTypedData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AvnuBuildTypedData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AvnuBuildTypedDataCopyWith<AvnuBuildTypedData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvnuBuildTypedDataCopyWith<$Res> {
  factory $AvnuBuildTypedDataCopyWith(
          AvnuBuildTypedData value, $Res Function(AvnuBuildTypedData) then) =
      _$AvnuBuildTypedDataCopyWithImpl<$Res, AvnuBuildTypedData>;
  @useResult
  $Res call(
      {Map<String, List<TypeDefinition>> types,
      String primaryType,
      Domain domain,
      Message message});

  $DomainCopyWith<$Res> get domain;
  $MessageCopyWith<$Res> get message;
}

/// @nodoc
class _$AvnuBuildTypedDataCopyWithImpl<$Res, $Val extends AvnuBuildTypedData>
    implements $AvnuBuildTypedDataCopyWith<$Res> {
  _$AvnuBuildTypedDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AvnuBuildTypedData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? types = null,
    Object? primaryType = null,
    Object? domain = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as Map<String, List<TypeDefinition>>,
      primaryType: null == primaryType
          ? _value.primaryType
          : primaryType // ignore: cast_nullable_to_non_nullable
              as String,
      domain: null == domain
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as Domain,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
    ) as $Val);
  }

  /// Create a copy of AvnuBuildTypedData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DomainCopyWith<$Res> get domain {
    return $DomainCopyWith<$Res>(_value.domain, (value) {
      return _then(_value.copyWith(domain: value) as $Val);
    });
  }

  /// Create a copy of AvnuBuildTypedData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MessageCopyWith<$Res> get message {
    return $MessageCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AvnuBuildTypedDataImplCopyWith<$Res>
    implements $AvnuBuildTypedDataCopyWith<$Res> {
  factory _$$AvnuBuildTypedDataImplCopyWith(_$AvnuBuildTypedDataImpl value,
          $Res Function(_$AvnuBuildTypedDataImpl) then) =
      __$$AvnuBuildTypedDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, List<TypeDefinition>> types,
      String primaryType,
      Domain domain,
      Message message});

  @override
  $DomainCopyWith<$Res> get domain;
  @override
  $MessageCopyWith<$Res> get message;
}

/// @nodoc
class __$$AvnuBuildTypedDataImplCopyWithImpl<$Res>
    extends _$AvnuBuildTypedDataCopyWithImpl<$Res, _$AvnuBuildTypedDataImpl>
    implements _$$AvnuBuildTypedDataImplCopyWith<$Res> {
  __$$AvnuBuildTypedDataImplCopyWithImpl(_$AvnuBuildTypedDataImpl _value,
      $Res Function(_$AvnuBuildTypedDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of AvnuBuildTypedData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? types = null,
    Object? primaryType = null,
    Object? domain = null,
    Object? message = null,
  }) {
    return _then(_$AvnuBuildTypedDataImpl(
      types: null == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as Map<String, List<TypeDefinition>>,
      primaryType: null == primaryType
          ? _value.primaryType
          : primaryType // ignore: cast_nullable_to_non_nullable
              as String,
      domain: null == domain
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as Domain,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AvnuBuildTypedDataImpl implements _AvnuBuildTypedData {
  const _$AvnuBuildTypedDataImpl(
      {required final Map<String, List<TypeDefinition>> types,
      required this.primaryType,
      required this.domain,
      required this.message})
      : _types = types;

  factory _$AvnuBuildTypedDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$AvnuBuildTypedDataImplFromJson(json);

  final Map<String, List<TypeDefinition>> _types;
  @override
  Map<String, List<TypeDefinition>> get types {
    if (_types is EqualUnmodifiableMapView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_types);
  }

  @override
  final String primaryType;
  @override
  final Domain domain;
  @override
  final Message message;

  @override
  String toString() {
    return 'AvnuBuildTypedData(types: $types, primaryType: $primaryType, domain: $domain, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvnuBuildTypedDataImpl &&
            const DeepCollectionEquality().equals(other._types, _types) &&
            (identical(other.primaryType, primaryType) ||
                other.primaryType == primaryType) &&
            (identical(other.domain, domain) || other.domain == domain) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_types),
      primaryType,
      domain,
      message);

  /// Create a copy of AvnuBuildTypedData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AvnuBuildTypedDataImplCopyWith<_$AvnuBuildTypedDataImpl> get copyWith =>
      __$$AvnuBuildTypedDataImplCopyWithImpl<_$AvnuBuildTypedDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AvnuBuildTypedDataImplToJson(
      this,
    );
  }
}

abstract class _AvnuBuildTypedData implements AvnuBuildTypedData {
  const factory _AvnuBuildTypedData(
      {required final Map<String, List<TypeDefinition>> types,
      required final String primaryType,
      required final Domain domain,
      required final Message message}) = _$AvnuBuildTypedDataImpl;

  factory _AvnuBuildTypedData.fromJson(Map<String, dynamic> json) =
      _$AvnuBuildTypedDataImpl.fromJson;

  @override
  Map<String, List<TypeDefinition>> get types;
  @override
  String get primaryType;
  @override
  Domain get domain;
  @override
  Message get message;

  /// Create a copy of AvnuBuildTypedData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AvnuBuildTypedDataImplCopyWith<_$AvnuBuildTypedDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TypeDefinition _$TypeDefinitionFromJson(Map<String, dynamic> json) {
  return _TypeDefinition.fromJson(json);
}

/// @nodoc
mixin _$TypeDefinition {
  String get name => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  /// Serializes this TypeDefinition to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TypeDefinition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TypeDefinitionCopyWith<TypeDefinition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TypeDefinitionCopyWith<$Res> {
  factory $TypeDefinitionCopyWith(
          TypeDefinition value, $Res Function(TypeDefinition) then) =
      _$TypeDefinitionCopyWithImpl<$Res, TypeDefinition>;
  @useResult
  $Res call({String name, String type});
}

/// @nodoc
class _$TypeDefinitionCopyWithImpl<$Res, $Val extends TypeDefinition>
    implements $TypeDefinitionCopyWith<$Res> {
  _$TypeDefinitionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TypeDefinition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TypeDefinitionImplCopyWith<$Res>
    implements $TypeDefinitionCopyWith<$Res> {
  factory _$$TypeDefinitionImplCopyWith(_$TypeDefinitionImpl value,
          $Res Function(_$TypeDefinitionImpl) then) =
      __$$TypeDefinitionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String type});
}

/// @nodoc
class __$$TypeDefinitionImplCopyWithImpl<$Res>
    extends _$TypeDefinitionCopyWithImpl<$Res, _$TypeDefinitionImpl>
    implements _$$TypeDefinitionImplCopyWith<$Res> {
  __$$TypeDefinitionImplCopyWithImpl(
      _$TypeDefinitionImpl _value, $Res Function(_$TypeDefinitionImpl) _then)
      : super(_value, _then);

  /// Create a copy of TypeDefinition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
  }) {
    return _then(_$TypeDefinitionImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TypeDefinitionImpl implements _TypeDefinition {
  const _$TypeDefinitionImpl({required this.name, required this.type});

  factory _$TypeDefinitionImpl.fromJson(Map<String, dynamic> json) =>
      _$$TypeDefinitionImplFromJson(json);

  @override
  final String name;
  @override
  final String type;

  @override
  String toString() {
    return 'TypeDefinition(name: $name, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TypeDefinitionImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, type);

  /// Create a copy of TypeDefinition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TypeDefinitionImplCopyWith<_$TypeDefinitionImpl> get copyWith =>
      __$$TypeDefinitionImplCopyWithImpl<_$TypeDefinitionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TypeDefinitionImplToJson(
      this,
    );
  }
}

abstract class _TypeDefinition implements TypeDefinition {
  const factory _TypeDefinition(
      {required final String name,
      required final String type}) = _$TypeDefinitionImpl;

  factory _TypeDefinition.fromJson(Map<String, dynamic> json) =
      _$TypeDefinitionImpl.fromJson;

  @override
  String get name;
  @override
  String get type;

  /// Create a copy of TypeDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TypeDefinitionImplCopyWith<_$TypeDefinitionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Domain _$DomainFromJson(Map<String, dynamic> json) {
  return _Domain.fromJson(json);
}

/// @nodoc
mixin _$Domain {
  String get name => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;
  String get chainId => throw _privateConstructorUsedError;

  /// Serializes this Domain to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Domain
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DomainCopyWith<Domain> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DomainCopyWith<$Res> {
  factory $DomainCopyWith(Domain value, $Res Function(Domain) then) =
      _$DomainCopyWithImpl<$Res, Domain>;
  @useResult
  $Res call({String name, String version, String chainId});
}

/// @nodoc
class _$DomainCopyWithImpl<$Res, $Val extends Domain>
    implements $DomainCopyWith<$Res> {
  _$DomainCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Domain
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? version = null,
    Object? chainId = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      chainId: null == chainId
          ? _value.chainId
          : chainId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DomainImplCopyWith<$Res> implements $DomainCopyWith<$Res> {
  factory _$$DomainImplCopyWith(
          _$DomainImpl value, $Res Function(_$DomainImpl) then) =
      __$$DomainImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String version, String chainId});
}

/// @nodoc
class __$$DomainImplCopyWithImpl<$Res>
    extends _$DomainCopyWithImpl<$Res, _$DomainImpl>
    implements _$$DomainImplCopyWith<$Res> {
  __$$DomainImplCopyWithImpl(
      _$DomainImpl _value, $Res Function(_$DomainImpl) _then)
      : super(_value, _then);

  /// Create a copy of Domain
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? version = null,
    Object? chainId = null,
  }) {
    return _then(_$DomainImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      chainId: null == chainId
          ? _value.chainId
          : chainId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DomainImpl implements _Domain {
  const _$DomainImpl(
      {required this.name, required this.version, required this.chainId});

  factory _$DomainImpl.fromJson(Map<String, dynamic> json) =>
      _$$DomainImplFromJson(json);

  @override
  final String name;
  @override
  final String version;
  @override
  final String chainId;

  @override
  String toString() {
    return 'Domain(name: $name, version: $version, chainId: $chainId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DomainImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.chainId, chainId) || other.chainId == chainId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, version, chainId);

  /// Create a copy of Domain
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DomainImplCopyWith<_$DomainImpl> get copyWith =>
      __$$DomainImplCopyWithImpl<_$DomainImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DomainImplToJson(
      this,
    );
  }
}

abstract class _Domain implements Domain {
  const factory _Domain(
      {required final String name,
      required final String version,
      required final String chainId}) = _$DomainImpl;

  factory _Domain.fromJson(Map<String, dynamic> json) = _$DomainImpl.fromJson;

  @override
  String get name;
  @override
  String get version;
  @override
  String get chainId;

  /// Create a copy of Domain
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DomainImplCopyWith<_$DomainImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Message _$MessageFromJson(Map<String, dynamic> json) {
  return _Message.fromJson(json);
}

/// @nodoc
mixin _$Message {
  String get caller => throw _privateConstructorUsedError;
  String get nonce => throw _privateConstructorUsedError;
  @JsonKey(name: 'execute_after')
  String get executeAfter => throw _privateConstructorUsedError;
  @JsonKey(name: 'execute_before')
  String get executeBefore => throw _privateConstructorUsedError;
  @JsonKey(name: 'calls_len')
  int get callsLen => throw _privateConstructorUsedError;
  List<Call> get calls => throw _privateConstructorUsedError;

  /// Serializes this Message to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageCopyWith<Message> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageCopyWith<$Res> {
  factory $MessageCopyWith(Message value, $Res Function(Message) then) =
      _$MessageCopyWithImpl<$Res, Message>;
  @useResult
  $Res call(
      {String caller,
      String nonce,
      @JsonKey(name: 'execute_after') String executeAfter,
      @JsonKey(name: 'execute_before') String executeBefore,
      @JsonKey(name: 'calls_len') int callsLen,
      List<Call> calls});
}

/// @nodoc
class _$MessageCopyWithImpl<$Res, $Val extends Message>
    implements $MessageCopyWith<$Res> {
  _$MessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? caller = null,
    Object? nonce = null,
    Object? executeAfter = null,
    Object? executeBefore = null,
    Object? callsLen = null,
    Object? calls = null,
  }) {
    return _then(_value.copyWith(
      caller: null == caller
          ? _value.caller
          : caller // ignore: cast_nullable_to_non_nullable
              as String,
      nonce: null == nonce
          ? _value.nonce
          : nonce // ignore: cast_nullable_to_non_nullable
              as String,
      executeAfter: null == executeAfter
          ? _value.executeAfter
          : executeAfter // ignore: cast_nullable_to_non_nullable
              as String,
      executeBefore: null == executeBefore
          ? _value.executeBefore
          : executeBefore // ignore: cast_nullable_to_non_nullable
              as String,
      callsLen: null == callsLen
          ? _value.callsLen
          : callsLen // ignore: cast_nullable_to_non_nullable
              as int,
      calls: null == calls
          ? _value.calls
          : calls // ignore: cast_nullable_to_non_nullable
              as List<Call>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageImplCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$$MessageImplCopyWith(
          _$MessageImpl value, $Res Function(_$MessageImpl) then) =
      __$$MessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String caller,
      String nonce,
      @JsonKey(name: 'execute_after') String executeAfter,
      @JsonKey(name: 'execute_before') String executeBefore,
      @JsonKey(name: 'calls_len') int callsLen,
      List<Call> calls});
}

/// @nodoc
class __$$MessageImplCopyWithImpl<$Res>
    extends _$MessageCopyWithImpl<$Res, _$MessageImpl>
    implements _$$MessageImplCopyWith<$Res> {
  __$$MessageImplCopyWithImpl(
      _$MessageImpl _value, $Res Function(_$MessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? caller = null,
    Object? nonce = null,
    Object? executeAfter = null,
    Object? executeBefore = null,
    Object? callsLen = null,
    Object? calls = null,
  }) {
    return _then(_$MessageImpl(
      caller: null == caller
          ? _value.caller
          : caller // ignore: cast_nullable_to_non_nullable
              as String,
      nonce: null == nonce
          ? _value.nonce
          : nonce // ignore: cast_nullable_to_non_nullable
              as String,
      executeAfter: null == executeAfter
          ? _value.executeAfter
          : executeAfter // ignore: cast_nullable_to_non_nullable
              as String,
      executeBefore: null == executeBefore
          ? _value.executeBefore
          : executeBefore // ignore: cast_nullable_to_non_nullable
              as String,
      callsLen: null == callsLen
          ? _value.callsLen
          : callsLen // ignore: cast_nullable_to_non_nullable
              as int,
      calls: null == calls
          ? _value._calls
          : calls // ignore: cast_nullable_to_non_nullable
              as List<Call>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageImpl implements _Message {
  const _$MessageImpl(
      {required this.caller,
      required this.nonce,
      @JsonKey(name: 'execute_after') required this.executeAfter,
      @JsonKey(name: 'execute_before') required this.executeBefore,
      @JsonKey(name: 'calls_len') required this.callsLen,
      required final List<Call> calls})
      : _calls = calls;

  factory _$MessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageImplFromJson(json);

  @override
  final String caller;
  @override
  final String nonce;
  @override
  @JsonKey(name: 'execute_after')
  final String executeAfter;
  @override
  @JsonKey(name: 'execute_before')
  final String executeBefore;
  @override
  @JsonKey(name: 'calls_len')
  final int callsLen;
  final List<Call> _calls;
  @override
  List<Call> get calls {
    if (_calls is EqualUnmodifiableListView) return _calls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_calls);
  }

  @override
  String toString() {
    return 'Message(caller: $caller, nonce: $nonce, executeAfter: $executeAfter, executeBefore: $executeBefore, callsLen: $callsLen, calls: $calls)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageImpl &&
            (identical(other.caller, caller) || other.caller == caller) &&
            (identical(other.nonce, nonce) || other.nonce == nonce) &&
            (identical(other.executeAfter, executeAfter) ||
                other.executeAfter == executeAfter) &&
            (identical(other.executeBefore, executeBefore) ||
                other.executeBefore == executeBefore) &&
            (identical(other.callsLen, callsLen) ||
                other.callsLen == callsLen) &&
            const DeepCollectionEquality().equals(other._calls, _calls));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, caller, nonce, executeAfter,
      executeBefore, callsLen, const DeepCollectionEquality().hash(_calls));

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageImplCopyWith<_$MessageImpl> get copyWith =>
      __$$MessageImplCopyWithImpl<_$MessageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageImplToJson(
      this,
    );
  }
}

abstract class _Message implements Message {
  const factory _Message(
      {required final String caller,
      required final String nonce,
      @JsonKey(name: 'execute_after') required final String executeAfter,
      @JsonKey(name: 'execute_before') required final String executeBefore,
      @JsonKey(name: 'calls_len') required final int callsLen,
      required final List<Call> calls}) = _$MessageImpl;

  factory _Message.fromJson(Map<String, dynamic> json) = _$MessageImpl.fromJson;

  @override
  String get caller;
  @override
  String get nonce;
  @override
  @JsonKey(name: 'execute_after')
  String get executeAfter;
  @override
  @JsonKey(name: 'execute_before')
  String get executeBefore;
  @override
  @JsonKey(name: 'calls_len')
  int get callsLen;
  @override
  List<Call> get calls;

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageImplCopyWith<_$MessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Call _$CallFromJson(Map<String, dynamic> json) {
  return _Call.fromJson(json);
}

/// @nodoc
mixin _$Call {
  String get to => throw _privateConstructorUsedError;
  String get selector => throw _privateConstructorUsedError;
  @JsonKey(name: 'calldata_len')
  int get calldataLen => throw _privateConstructorUsedError;
  List<String> get calldata => throw _privateConstructorUsedError;

  /// Serializes this Call to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Call
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CallCopyWith<Call> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CallCopyWith<$Res> {
  factory $CallCopyWith(Call value, $Res Function(Call) then) =
      _$CallCopyWithImpl<$Res, Call>;
  @useResult
  $Res call(
      {String to,
      String selector,
      @JsonKey(name: 'calldata_len') int calldataLen,
      List<String> calldata});
}

/// @nodoc
class _$CallCopyWithImpl<$Res, $Val extends Call>
    implements $CallCopyWith<$Res> {
  _$CallCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Call
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? to = null,
    Object? selector = null,
    Object? calldataLen = null,
    Object? calldata = null,
  }) {
    return _then(_value.copyWith(
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      selector: null == selector
          ? _value.selector
          : selector // ignore: cast_nullable_to_non_nullable
              as String,
      calldataLen: null == calldataLen
          ? _value.calldataLen
          : calldataLen // ignore: cast_nullable_to_non_nullable
              as int,
      calldata: null == calldata
          ? _value.calldata
          : calldata // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CallImplCopyWith<$Res> implements $CallCopyWith<$Res> {
  factory _$$CallImplCopyWith(
          _$CallImpl value, $Res Function(_$CallImpl) then) =
      __$$CallImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String to,
      String selector,
      @JsonKey(name: 'calldata_len') int calldataLen,
      List<String> calldata});
}

/// @nodoc
class __$$CallImplCopyWithImpl<$Res>
    extends _$CallCopyWithImpl<$Res, _$CallImpl>
    implements _$$CallImplCopyWith<$Res> {
  __$$CallImplCopyWithImpl(_$CallImpl _value, $Res Function(_$CallImpl) _then)
      : super(_value, _then);

  /// Create a copy of Call
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? to = null,
    Object? selector = null,
    Object? calldataLen = null,
    Object? calldata = null,
  }) {
    return _then(_$CallImpl(
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      selector: null == selector
          ? _value.selector
          : selector // ignore: cast_nullable_to_non_nullable
              as String,
      calldataLen: null == calldataLen
          ? _value.calldataLen
          : calldataLen // ignore: cast_nullable_to_non_nullable
              as int,
      calldata: null == calldata
          ? _value._calldata
          : calldata // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CallImpl implements _Call {
  const _$CallImpl(
      {required this.to,
      required this.selector,
      @JsonKey(name: 'calldata_len') required this.calldataLen,
      required final List<String> calldata})
      : _calldata = calldata;

  factory _$CallImpl.fromJson(Map<String, dynamic> json) =>
      _$$CallImplFromJson(json);

  @override
  final String to;
  @override
  final String selector;
  @override
  @JsonKey(name: 'calldata_len')
  final int calldataLen;
  final List<String> _calldata;
  @override
  List<String> get calldata {
    if (_calldata is EqualUnmodifiableListView) return _calldata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_calldata);
  }

  @override
  String toString() {
    return 'Call(to: $to, selector: $selector, calldataLen: $calldataLen, calldata: $calldata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CallImpl &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.selector, selector) ||
                other.selector == selector) &&
            (identical(other.calldataLen, calldataLen) ||
                other.calldataLen == calldataLen) &&
            const DeepCollectionEquality().equals(other._calldata, _calldata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, to, selector, calldataLen,
      const DeepCollectionEquality().hash(_calldata));

  /// Create a copy of Call
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CallImplCopyWith<_$CallImpl> get copyWith =>
      __$$CallImplCopyWithImpl<_$CallImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CallImplToJson(
      this,
    );
  }
}

abstract class _Call implements Call {
  const factory _Call(
      {required final String to,
      required final String selector,
      @JsonKey(name: 'calldata_len') required final int calldataLen,
      required final List<String> calldata}) = _$CallImpl;

  factory _Call.fromJson(Map<String, dynamic> json) = _$CallImpl.fromJson;

  @override
  String get to;
  @override
  String get selector;
  @override
  @JsonKey(name: 'calldata_len')
  int get calldataLen;
  @override
  List<String> get calldata;

  /// Create a copy of Call
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CallImplCopyWith<_$CallImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
