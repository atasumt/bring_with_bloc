// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dog_response_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DogResponseData _$DogResponseDataFromJson(Map<String, dynamic> json) {
  return _DogResponseData.fromJson(json);
}

/// @nodoc
mixin _$DogResponseData {
  List<String>? get message => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DogResponseDataCopyWith<DogResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DogResponseDataCopyWith<$Res> {
  factory $DogResponseDataCopyWith(
          DogResponseData value, $Res Function(DogResponseData) then) =
      _$DogResponseDataCopyWithImpl<$Res, DogResponseData>;
  @useResult
  $Res call({List<String>? message, String? status});
}

/// @nodoc
class _$DogResponseDataCopyWithImpl<$Res, $Val extends DogResponseData>
    implements $DogResponseDataCopyWith<$Res> {
  _$DogResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DogResponseDataImplCopyWith<$Res>
    implements $DogResponseDataCopyWith<$Res> {
  factory _$$DogResponseDataImplCopyWith(_$DogResponseDataImpl value,
          $Res Function(_$DogResponseDataImpl) then) =
      __$$DogResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String>? message, String? status});
}

/// @nodoc
class __$$DogResponseDataImplCopyWithImpl<$Res>
    extends _$DogResponseDataCopyWithImpl<$Res, _$DogResponseDataImpl>
    implements _$$DogResponseDataImplCopyWith<$Res> {
  __$$DogResponseDataImplCopyWithImpl(
      _$DogResponseDataImpl _value, $Res Function(_$DogResponseDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? status = freezed,
  }) {
    return _then(_$DogResponseDataImpl(
      message: freezed == message
          ? _value._message
          : message // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DogResponseDataImpl implements _DogResponseData {
  _$DogResponseDataImpl({final List<String>? message, this.status})
      : _message = message;

  factory _$DogResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DogResponseDataImplFromJson(json);

  final List<String>? _message;
  @override
  List<String>? get message {
    final value = _message;
    if (value == null) return null;
    if (_message is EqualUnmodifiableListView) return _message;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? status;

  @override
  String toString() {
    return 'DogResponseData(message: $message, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DogResponseDataImpl &&
            const DeepCollectionEquality().equals(other._message, _message) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_message), status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DogResponseDataImplCopyWith<_$DogResponseDataImpl> get copyWith =>
      __$$DogResponseDataImplCopyWithImpl<_$DogResponseDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DogResponseDataImplToJson(
      this,
    );
  }
}

abstract class _DogResponseData implements DogResponseData {
  factory _DogResponseData(
      {final List<String>? message,
      final String? status}) = _$DogResponseDataImpl;

  factory _DogResponseData.fromJson(Map<String, dynamic> json) =
      _$DogResponseDataImpl.fromJson;

  @override
  List<String>? get message;
  @override
  String? get status;
  @override
  @JsonKey(ignore: true)
  _$$DogResponseDataImplCopyWith<_$DogResponseDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
