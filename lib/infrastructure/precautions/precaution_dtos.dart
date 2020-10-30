import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:help_me/domain/precautions/precautions.dart';
import 'package:kt_dart/kt.dart';

part 'precaution_dtos.freezed.dart';
part 'precaution_dtos.g.dart';

@freezed
abstract class PrecautionDTO implements _$PrecautionDTO {
  const PrecautionDTO._();

  const factory PrecautionDTO({
    @required String title,
    @required List<String> before,
    @required List<String> during,
    @required List<String> after,
  }) = _PrecautionDTO;

  factory PrecautionDTO.fromDomain(Precaution precaution) {
    return PrecautionDTO(
        title: precaution.title,
        before: precaution.before.asList(),
        during: precaution.during.asList(),
        after: precaution.after.asList());
  }

  Precaution toDomain() {
    return Precaution(
      title: title,
      before: before.toImmutableList(),
      during: during.toImmutableList(),
      after: after.toImmutableList(),
    );
  }

  factory PrecautionDTO.fromJson(Map<String, dynamic> json) =>
      _$PrecautionDTOFromJson(json);
}
