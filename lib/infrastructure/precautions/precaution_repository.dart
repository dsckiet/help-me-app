import 'package:dartz/dartz.dart';
import 'package:help_me/domain/precautions/i_precaution_repository.dart';
import 'package:help_me/domain/precautions/precaution_failiures.dart';
import 'package:help_me/domain/precautions/precautions.dart';
import 'package:help_me/infrastructure/core/help_me_api.dart';
import 'package:help_me/infrastructure/precautions/precaution_dtos.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

@lazySingleton
@RegisterAs(IPrecautionsRepository)
class PrecautionRepository implements IPrecautionsRepository {
  final HelpMeApi _api;

  PrecautionRepository(this._api);

  @override
  Future<Either<PrecautionFailiure, KtList<Precaution>>>
      getPrecautions() async {
    try {
      final data = await _api.getPrecautions();
      return right(
        data
            .map(
              (e) => PrecautionDTO.fromJson(e).toDomain(),
            )
            .toImmutableList(),
      );
    } catch (e) {
      print(e);
      return left(const PrecautionFailiure.unexpected());
    }
  }
}
