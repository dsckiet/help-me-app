import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:help_me/domain/precautions/i_precaution_repository.dart';
import 'package:help_me/domain/precautions/precaution_failiures.dart';
import 'package:help_me/domain/precautions/precautions.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

part 'precaution_event.dart';
part 'precaution_state.dart';
part 'precaution_bloc.freezed.dart';

@injectable
class PrecautionBloc extends Bloc<PrecautionEvent, PrecautionState> {
  final IPrecautionsRepository precautionRepository;

  PrecautionBloc(this.precautionRepository);

  @override
  PrecautionState get initialState => PrecautionState.initial();

  @override
  Stream<PrecautionState> mapEventToState(
    PrecautionEvent event,
  ) async* {
    yield PrecautionState.loadingProgress();
    final possibleFailiure = await precautionRepository.getPrecautions();
    yield possibleFailiure.fold(
        (failiure) => PrecautionState.loadingFailiure(failiure),
        (precautions) => PrecautionState.loadingSuccess(precautions));
  }
}
