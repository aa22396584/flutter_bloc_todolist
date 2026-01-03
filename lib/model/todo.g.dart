// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Todo _$TodoFromJson(Map<String, dynamic> json) => _Todo(
  id: (json['id'] as num?)?.toInt(),
  description: json['description'] as String,
  isDone: json['is_done'] as bool? ?? false,
);

Map<String, dynamic> _$TodoToJson(_Todo instance) => <String, dynamic>{
  'id': instance.id,
  'description': instance.description,
  'is_done': instance.isDone,
};
