part of 'firstaid_bloc.dart';

@freezed
abstract class FirstaidState with _$FirstaidState {
  const factory FirstaidState.initial() = _Initial;
  const factory FirstaidState.loadingProgress() = _LoadingProgress;
  const factory FirstaidState.loadingSuccess(KtList<FirstAid> firstAids) =
      _LoadingSuccess;
  const factory FirstaidState.loadingFailiure(FirstAidFailiure failiure) =
      _LoadingFailiure;
}
