// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'why')
  Map<String, dynamic>? get why => throw _privateConstructorUsedError;
  @JsonSerializable(anyMap: false)
  @JsonKey(name: 'why2')
  Map<String, dynamic>? get why2 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'why')
          Map<String, dynamic>? why,
      @JsonSerializable(anyMap: false)
      @JsonKey(name: 'why2')
          Map<String, dynamic>? why2});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? why = freezed,
    Object? why2 = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      why: freezed == why
          ? _value.why
          : why // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      why2: freezed == why2
          ? _value.why2
          : why2 // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'why')
          Map<String, dynamic>? why,
      @JsonSerializable(anyMap: false)
      @JsonKey(name: 'why2')
          Map<String, dynamic>? why2});
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res, _$_User>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? why = freezed,
    Object? why2 = freezed,
  }) {
    return _then(_$_User(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      why: freezed == why
          ? _value._why
          : why // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      why2: freezed == why2
          ? _value._why2
          : why2 // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(anyMap: true)
class _$_User extends _User with DiagnosticableTreeMixin {
  const _$_User(
      {required this.id,
      required this.name,
      @JsonKey(name: 'why')
          final Map<String, dynamic>? why,
      @JsonSerializable(anyMap: false)
      @JsonKey(name: 'why2')
          final Map<String, dynamic>? why2})
      : _why = why,
        _why2 = why2,
        super._();

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  final int id;
  @override
  final String name;
  final Map<String, dynamic>? _why;
  @override
  @JsonKey(name: 'why')
  Map<String, dynamic>? get why {
    final value = _why;
    if (value == null) return null;
    if (_why is EqualUnmodifiableMapView) return _why;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _why2;
  @override
  @JsonSerializable(anyMap: false)
  @JsonKey(name: 'why2')
  Map<String, dynamic>? get why2 {
    final value = _why2;
    if (value == null) return null;
    if (_why2 is EqualUnmodifiableMapView) return _why2;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'User(id: $id, name: $name, why: $why, why2: $why2)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'User'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('why', why))
      ..add(DiagnosticsProperty('why2', why2));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._why, _why) &&
            const DeepCollectionEquality().equals(other._why2, _why2));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      const DeepCollectionEquality().hash(_why),
      const DeepCollectionEquality().hash(_why2));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(
      this,
    );
  }
}

abstract class _User extends User {
  const factory _User(
      {required final int id,
      required final String name,
      @JsonKey(name: 'why')
          final Map<String, dynamic>? why,
      @JsonSerializable(anyMap: false)
      @JsonKey(name: 'why2')
          final Map<String, dynamic>? why2}) = _$_User;
  const _User._() : super._();

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'why')
  Map<String, dynamic>? get why;
  @override
  @JsonSerializable(anyMap: false)
  @JsonKey(name: 'why2')
  Map<String, dynamic>? get why2;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}
