import 'package:dartz/dartz.dart';
import 'package:help_me/domain/first_aid/first_aid.dart';
import 'package:help_me/domain/first_aid/first_aid_failiures.dart';
import 'package:help_me/domain/first_aid/i_first_aid_repository.dart';
import 'package:help_me/infrastructure/core/help_me_api.dart';
import 'package:help_me/infrastructure/first_aid/first_aid_dtos.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

@lazySingleton
@RegisterAs(IFirstAidRepository)
class FirstAidRepository implements IFirstAidRepository {
  final HelpMeApi _api;

  FirstAidRepository(this._api);
  @override
  Future<Either<FirstAidFailiure, KtList<FirstAid>>> getFirstAid() async {
    try {
      final data = await _api.getFirstAids();
      return right(
        data
            .map(
              (e) => FirstAidDTO.fromJson(e).toDomain(),
            )
            .toImmutableList(),
      );
    } catch (e) {
      print(e);
      return left(
        const FirstAidFailiure.unexpected(),
      );
    }
  }
}
