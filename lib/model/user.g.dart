// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map json) => _$_User(
      id: json['id'] as int,
      name: json['name'] as String,
      why: (json['why'] as Map?)?.map(
        (k, e) => MapEntry(k as String, e),
      ),
      why2: (json['why2'] as Map?)?.map(
        (k, e) => MapEntry(k as String, e),
      ),
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'why': instance.why,
      'why2': instance.why2,
    };
