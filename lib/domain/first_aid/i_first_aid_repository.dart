import 'package:dartz/dartz.dart';
import 'package:help_me/domain/first_aid/first_aid.dart';
import 'package:help_me/domain/first_aid/first_aid_failiures.dart';
import 'package:kt_dart/kt.dart';

abstract class IFirstAidRepository {
  Future<Either<FirstAidFailiure, KtList<FirstAid>>> getFirstAid();
}
