import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'precautions.freezed.dart';

@freezed
abstract class Precaution with _$Precaution {
  const factory Precaution({
    @required String title,
    @required KtList<String> before,
    @required KtList<String> during,
    @required KtList<String> after,
  }) = _Precaution;
}
