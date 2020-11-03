// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'first_aid_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FirstAidDTO _$_$_FirstAidDTOFromJson(Map<String, dynamic> json) {
  return _$_FirstAidDTO(
    woundType: json['woundType'] as String,
    treatment: (json['treatment'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$_$_FirstAidDTOToJson(_$_FirstAidDTO instance) =>
    <String, dynamic>{
      'woundType': instance.woundType,
      'treatment': instance.treatment,
    };
