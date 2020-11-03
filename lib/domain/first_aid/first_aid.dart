import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'first_aid.freezed.dart';

@freezed
abstract class FirstAid with _$FirstAid {
  const factory FirstAid({
    @required String woundType,
    @required KtList<String> treatment,
  }) = _FirstAid;
}
