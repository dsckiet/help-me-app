import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:help_me/domain/first_aid/first_aid.dart';
import 'package:help_me/domain/first_aid/first_aid_failiures.dart';
import 'package:help_me/domain/first_aid/i_first_aid_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'firstaid_event.dart';
part 'firstaid_state.dart';
part 'firstaid_bloc.freezed.dart';

@injectable
class FirstaidBloc extends Bloc<FirstaidEvent, FirstaidState> {
  final IFirstAidRepository iFirstAidRepository;

  FirstaidBloc(this.iFirstAidRepository);

  @override
  FirstaidState get initialState => FirstaidState.initial();

  @override
  Stream<FirstaidState> mapEventToState(
    FirstaidEvent event,
  ) async* {
    yield FirstaidState.loadingProgress();
    final possibleFailiure = await iFirstAidRepository.getFirstAid();
    yield possibleFailiure.fold(
      (failiure) => FirstaidState.loadingFailiure(failiure),
      (r) => FirstaidState.loadingSuccess(r),
    );
  }
}
