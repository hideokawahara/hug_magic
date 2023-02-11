// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_request_result_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TestRequestResultEntity _$$_TestRequestResultEntityFromJson(
        Map<String, dynamic> json) =>
    _$_TestRequestResultEntity(
      ticket: const TestEntityConverter()
          .fromJson(json['ticket'] as Map<String, dynamic>),
      audit: const TestAuditEntityConverter()
          .fromJson(json['audit'] as Map<String, dynamic>),
      comment: const TestCommentEntityConverter()
          .fromJson(json['comment'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TestRequestResultEntityToJson(
        _$_TestRequestResultEntity instance) =>
    <String, dynamic>{
      'ticket': const TestEntityConverter().toJson(instance.ticket),
      'audit': const TestAuditEntityConverter().toJson(instance.audit),
      'comment': const TestCommentEntityConverter().toJson(instance.comment),
    };
