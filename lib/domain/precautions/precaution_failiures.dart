import 'package:freezed_annotation/freezed_annotation.dart';

part 'precaution_failiures.freezed.dart';

@freezed
abstract class PrecautionFailiure with _$PrecautionFailiure {
  const factory PrecautionFailiure.unexpected() = _Unexpected;
}
