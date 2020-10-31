import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:help_me/domain/first_aid/first_aid.dart';
import 'package:kt_dart/kt.dart';

part 'first_aid_dtos.freezed.dart';
part 'first_aid_dtos.g.dart';

@freezed
abstract class FirstAidDTO implements _$FirstAidDTO {
  const FirstAidDTO._();

  const factory FirstAidDTO({
    @required String woundType,
    @required List<String> treatment,
  }) = _FirstAidDTO;

  factory FirstAidDTO.fromDomain(FirstAid firstAid) {
    return FirstAidDTO(
      treatment: firstAid.treatment.asList(),
      woundType: firstAid.woundType,
    );
  }

  FirstAid toDomain() {
    return FirstAid(
      woundType: woundType,
      treatment: treatment.toImmutableList(),
    );
  }

  factory FirstAidDTO.fromJson(Map<String, dynamic> json) =>
      _$FirstAidDTOFromJson(json);
}
