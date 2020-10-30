// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'precaution_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PrecautionDTO _$_$_PrecautionDTOFromJson(Map<String, dynamic> json) {
  return _$_PrecautionDTO(
    title: json['title'] as String,
    before: (json['before'] as List)?.map((e) => e as String)?.toList(),
    during: (json['during'] as List)?.map((e) => e as String)?.toList(),
    after: (json['after'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$_$_PrecautionDTOToJson(_$_PrecautionDTO instance) =>
    <String, dynamic>{
      'title': instance.title,
      'before': instance.before,
      'during': instance.during,
      'after': instance.after,
    };
