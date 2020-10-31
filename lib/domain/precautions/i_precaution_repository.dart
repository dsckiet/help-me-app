import 'package:dartz/dartz.dart';
import 'package:help_me/domain/precautions/precaution_failiures.dart';
import 'package:help_me/domain/precautions/precautions.dart';
import 'package:kt_dart/collection.dart';

abstract class IPrecautionsRepository {
  Future<Either<PrecautionFailiure, KtList<Precaution>>> getPrecautions();
}
