part of 'network_loader_bloc.dart';

abstract class NetworkLoaderState extends Equatable {
  const NetworkLoaderState();

  @override
  List<Object> get props => [];
}

class NetworkLoaderInitial extends NetworkLoaderState {}

class NetworkLoaderLoading extends NetworkLoaderState {}

class NetworkLoaderLoaded extends NetworkLoaderState {
  final PrecautionsDataRepository precautions;
  final FirstAidDataRepository firstAid;
  NetworkLoaderLoaded(this.precautions, this.firstAid);
}

class NetworkLoaderError extends NetworkLoaderState {
  final String message;

  NetworkLoaderError(this.message);
}
