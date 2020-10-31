part of 'firstaid_bloc.dart';

@freezed
abstract class FirstaidEvent with _$FirstaidEvent {
  const factory FirstaidEvent.loadFirstAids() = _LoadFirstAids;
}
