import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket_request_result_entity.freezed.dart';
part 'ticket_request_result_entity.g.dart';

class TestEntity {
  final Map<String, dynamic> json;
  TestEntity({
    required this.json,
});
  factory TestEntity.fromJson(Map<String, dynamic> _json) {
    return TestEntity(
      json: _json,
    );
  }
}

class TestAuditEntity {
  TestAuditEntity({
    required this.json,
});
  final Map<String, dynamic> json;
  factory TestAuditEntity.fromJson(Map<String, dynamic> _json) {
    return TestAuditEntity(
      json: _json,
    );
  }
}

class TestCommentEntity {
  TestCommentEntity({
    required this.json,
});
  final Map<String, dynamic> json;
  factory TestCommentEntity.fromJson(Map<String, dynamic> _json) {
    return TestCommentEntity(json: _json);
  }
}


@freezed
// @JsonSerializable(createToJson: false)
abstract class TestRequestResultEntity with _$TestRequestResultEntity {
  // const TicketRequestResultEntity._();
  const factory TestRequestResultEntity({
    @TestEntityConverter() required TestEntity ticket,

    @TestAuditEntityConverter()
    required TestAuditEntity audit,

    @TestCommentEntityConverter() required TestCommentEntity comment,
  }) = _TestRequestResultEntity;

  factory TestRequestResultEntity.fromJson(Map<String, dynamic> json) => _$TestRequestResultEntityFromJson(json);

}

class TestEntityConverter implements JsonConverter<TestEntity, Map<String, dynamic>> {
  const TestEntityConverter();
  @override
  TestEntity fromJson(Map<String, dynamic> json) {
    final ticket = json['ticket'] as Map<String, dynamic>;
    return TestEntity.fromJson(ticket);
  }

  @override
  Map<String, dynamic> toJson(TestEntity object) {
    return {};
  }

}

class TestAuditEntityConverter implements JsonConverter<TestAuditEntity, Map<String, dynamic>> {
  const TestAuditEntityConverter();
  @override
  TestAuditEntity fromJson(Map<String, dynamic> json) {
    final audit = json['audit'] as Map<String, dynamic>;
    return TestAuditEntity.fromJson(audit);
  }

  @override
  Map<String, dynamic> toJson(TestAuditEntity object) {
    return {};
  }
}

class TestCommentEntityConverter implements JsonConverter<TestCommentEntity, Map<String, dynamic>> {
  const TestCommentEntityConverter();
  @override
  TestCommentEntity fromJson(Map<String, dynamic> json) {
    final audit = json['audit'] as Map<String, dynamic>;
    final commentEvent = audit['events'][0] as Map<String, dynamic>;
    final comment = <String, dynamic>{
      ...commentEvent,
      'metadata': audit['metadata'] as Map<String, dynamic>,
      'created_at': audit['created_at'] as String,
      'via': audit['via'] as Map<String, dynamic>,
    };
    return TestCommentEntity.fromJson(comment);
  }

  @override
  Map<String, dynamic> toJson(TestCommentEntity object) {
    return {};
  }

}