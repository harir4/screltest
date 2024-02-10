// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dataModel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ApiModel _$ApiModelFromJson(Map<String, dynamic> json) {
  return _ApiModel.fromJson(json);
}

/// @nodoc
mixin _$ApiModel {
  int get id => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiModelCopyWith<ApiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiModelCopyWith<$Res> {
  factory $ApiModelCopyWith(ApiModel value, $Res Function(ApiModel) then) =
      _$ApiModelCopyWithImpl<$Res, ApiModel>;
  @useResult
  $Res call({int id, int userId, String body, String title});
}

/// @nodoc
class _$ApiModelCopyWithImpl<$Res, $Val extends ApiModel>
    implements $ApiModelCopyWith<$Res> {
  _$ApiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? body = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiModelImplCopyWith<$Res>
    implements $ApiModelCopyWith<$Res> {
  factory _$$ApiModelImplCopyWith(
          _$ApiModelImpl value, $Res Function(_$ApiModelImpl) then) =
      __$$ApiModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int userId, String body, String title});
}

/// @nodoc
class __$$ApiModelImplCopyWithImpl<$Res>
    extends _$ApiModelCopyWithImpl<$Res, _$ApiModelImpl>
    implements _$$ApiModelImplCopyWith<$Res> {
  __$$ApiModelImplCopyWithImpl(
      _$ApiModelImpl _value, $Res Function(_$ApiModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? body = null,
    Object? title = null,
  }) {
    return _then(_$ApiModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiModelImpl implements _ApiModel {
  const _$ApiModelImpl(
      {required this.id,
      required this.userId,
      required this.body,
      required this.title});

  factory _$ApiModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiModelImplFromJson(json);

  @override
  final int id;
  @override
  final int userId;
  @override
  final String body;
  @override
  final String title;

  @override
  String toString() {
    return 'ApiModel(id: $id, userId: $userId, body: $body, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, body, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiModelImplCopyWith<_$ApiModelImpl> get copyWith =>
      __$$ApiModelImplCopyWithImpl<_$ApiModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiModelImplToJson(
      this,
    );
  }
}

abstract class _ApiModel implements ApiModel {
  const factory _ApiModel(
      {required final int id,
      required final int userId,
      required final String body,
      required final String title}) = _$ApiModelImpl;

  factory _ApiModel.fromJson(Map<String, dynamic> json) =
      _$ApiModelImpl.fromJson;

  @override
  int get id;
  @override
  int get userId;
  @override
  String get body;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$ApiModelImplCopyWith<_$ApiModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
