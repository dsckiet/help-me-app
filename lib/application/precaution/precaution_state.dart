part of 'precaution_bloc.dart';

@freezed
abstract class PrecautionState with _$PrecautionState {
  const factory PrecautionState.initial() = _Initial;
  const factory PrecautionState.loadingProgress() = _LoadingProgress;
  const factory PrecautionState.loadingSuccess(KtList<Precaution> precautions) =
      _LoadingSuccess;
  const factory PrecautionState.loadingFailiure(PrecautionFailiure failiure) =
      _LoadingFailiure;
}
