// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Volcano _$VolcanoFromJson(Map<String, dynamic> json) => Volcano(
      title: json['title'] as String?,
      url: json['url'] as String?,
      facts: json['facts'] as String?,
    );

Map<String, dynamic> _$VolcanoToJson(Volcano instance) => <String, dynamic>{
      'title': instance.title,
      'url': instance.url,
      'facts': instance.facts,
    };
