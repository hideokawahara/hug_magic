// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_request_result_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TestRequestResultEntity _$TestRequestResultEntityFromJson(
    Map<String, dynamic> json) {
  return _TestRequestResultEntity.fromJson(json);
}

/// @nodoc
mixin _$TestRequestResultEntity {
  @TestEntityConverter()
  TestEntity get ticket => throw _privateConstructorUsedError;
  @TestAuditEntityConverter()
  TestAuditEntity get audit => throw _privateConstructorUsedError;
  @TestCommentEntityConverter()
  TestCommentEntity get comment => throw _privateConstructorUsedError;
  Map<String, dynamic>? get why => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TestRequestResultEntityCopyWith<TestRequestResultEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestRequestResultEntityCopyWith<$Res> {
  factory $TestRequestResultEntityCopyWith(TestRequestResultEntity value,
          $Res Function(TestRequestResultEntity) then) =
      _$TestRequestResultEntityCopyWithImpl<$Res, TestRequestResultEntity>;
  @useResult
  $Res call(
      {@TestEntityConverter() TestEntity ticket,
      @TestAuditEntityConverter() TestAuditEntity audit,
      @TestCommentEntityConverter() TestCommentEntity comment,
      Map<String, dynamic>? why});
}

/// @nodoc
class _$TestRequestResultEntityCopyWithImpl<$Res,
        $Val extends TestRequestResultEntity>
    implements $TestRequestResultEntityCopyWith<$Res> {
  _$TestRequestResultEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticket = null,
    Object? audit = null,
    Object? comment = null,
    Object? why = freezed,
  }) {
    return _then(_value.copyWith(
      ticket: null == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as TestEntity,
      audit: null == audit
          ? _value.audit
          : audit // ignore: cast_nullable_to_non_nullable
              as TestAuditEntity,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as TestCommentEntity,
      why: freezed == why
          ? _value.why
          : why // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TestRequestResultEntityCopyWith<$Res>
    implements $TestRequestResultEntityCopyWith<$Res> {
  factory _$$_TestRequestResultEntityCopyWith(_$_TestRequestResultEntity value,
          $Res Function(_$_TestRequestResultEntity) then) =
      __$$_TestRequestResultEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@TestEntityConverter() TestEntity ticket,
      @TestAuditEntityConverter() TestAuditEntity audit,
      @TestCommentEntityConverter() TestCommentEntity comment,
      Map<String, dynamic>? why});
}

/// @nodoc
class __$$_TestRequestResultEntityCopyWithImpl<$Res>
    extends _$TestRequestResultEntityCopyWithImpl<$Res,
        _$_TestRequestResultEntity>
    implements _$$_TestRequestResultEntityCopyWith<$Res> {
  __$$_TestRequestResultEntityCopyWithImpl(_$_TestRequestResultEntity _value,
      $Res Function(_$_TestRequestResultEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticket = null,
    Object? audit = null,
    Object? comment = null,
    Object? why = freezed,
  }) {
    return _then(_$_TestRequestResultEntity(
      ticket: null == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as TestEntity,
      audit: null == audit
          ? _value.audit
          : audit // ignore: cast_nullable_to_non_nullable
              as TestAuditEntity,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as TestCommentEntity,
      why: freezed == why
          ? _value._why
          : why // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TestRequestResultEntity implements _TestRequestResultEntity {
  const _$_TestRequestResultEntity(
      {@TestEntityConverter() required this.ticket,
      @TestAuditEntityConverter() required this.audit,
      @TestCommentEntityConverter() required this.comment,
      final Map<String, dynamic>? why})
      : _why = why;

  factory _$_TestRequestResultEntity.fromJson(Map<String, dynamic> json) =>
      _$$_TestRequestResultEntityFromJson(json);

  @override
  @TestEntityConverter()
  final TestEntity ticket;
  @override
  @TestAuditEntityConverter()
  final TestAuditEntity audit;
  @override
  @TestCommentEntityConverter()
  final TestCommentEntity comment;
  final Map<String, dynamic>? _why;
  @override
  Map<String, dynamic>? get why {
    final value = _why;
    if (value == null) return null;
    if (_why is EqualUnmodifiableMapView) return _why;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'TestRequestResultEntity(ticket: $ticket, audit: $audit, comment: $comment, why: $why)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TestRequestResultEntity &&
            (identical(other.ticket, ticket) || other.ticket == ticket) &&
            (identical(other.audit, audit) || other.audit == audit) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            const DeepCollectionEquality().equals(other._why, _why));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, ticket, audit, comment,
      const DeepCollectionEquality().hash(_why));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TestRequestResultEntityCopyWith<_$_TestRequestResultEntity>
      get copyWith =>
          __$$_TestRequestResultEntityCopyWithImpl<_$_TestRequestResultEntity>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TestRequestResultEntityToJson(
      this,
    );
  }
}

abstract class _TestRequestResultEntity implements TestRequestResultEntity {
  const factory _TestRequestResultEntity(
      {@TestEntityConverter() required final TestEntity ticket,
      @TestAuditEntityConverter() required final TestAuditEntity audit,
      @TestCommentEntityConverter() required final TestCommentEntity comment,
      final Map<String, dynamic>? why}) = _$_TestRequestResultEntity;

  factory _TestRequestResultEntity.fromJson(Map<String, dynamic> json) =
      _$_TestRequestResultEntity.fromJson;

  @override
  @TestEntityConverter()
  TestEntity get ticket;
  @override
  @TestAuditEntityConverter()
  TestAuditEntity get audit;
  @override
  @TestCommentEntityConverter()
  TestCommentEntity get comment;
  @override
  Map<String, dynamic>? get why;
  @override
  @JsonKey(ignore: true)
  _$$_TestRequestResultEntityCopyWith<_$_TestRequestResultEntity>
      get copyWith => throw _privateConstructorUsedError;
}
