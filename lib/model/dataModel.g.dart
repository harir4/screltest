// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dataModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiModelImpl _$$ApiModelImplFromJson(Map<String, dynamic> json) =>
    _$ApiModelImpl(
      id: json['id'] as int,
      userId: json['userId'] as int,
      body: json['body'] as String,
      title: json['title'] as String,
    );

Map<String, dynamic> _$$ApiModelImplToJson(_$ApiModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'body': instance.body,
      'title': instance.title,
    };
