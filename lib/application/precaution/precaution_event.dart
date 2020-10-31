part of 'precaution_bloc.dart';

@freezed
abstract class PrecautionEvent with _$PrecautionEvent {
  const factory PrecautionEvent.loadPrecautions() = _LoadPrecautions;
}
