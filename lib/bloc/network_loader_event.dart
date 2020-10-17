part of 'network_loader_bloc.dart';

abstract class NetworkLoaderEvent extends Equatable {
  const NetworkLoaderEvent();

  @override
  List<Object> get props => [];
}

class GetPrecautions extends NetworkLoaderEvent {}

class GetFirstAid extends NetworkLoaderEvent {}
