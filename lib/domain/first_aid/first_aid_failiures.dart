import 'package:freezed_annotation/freezed_annotation.dart';

part 'first_aid_failiures.freezed.dart';

@freezed
abstract class FirstAidFailiure with _$FirstAidFailiure {
  const factory FirstAidFailiure.unexpected() = _Unexpected;
}
