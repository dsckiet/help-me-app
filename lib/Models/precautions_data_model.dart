import 'package:equatable/equatable.dart';

class PrecautionsDataRepository extends Equatable {
  final List precautionsData;
  PrecautionsDataRepository(this.precautionsData);

  List<Object> get props => [precautionsData];
}
