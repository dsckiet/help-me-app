import 'package:equatable/equatable.dart';

class FirstAidDataRepository extends Equatable {
  final List firstAidData;
  FirstAidDataRepository(this.firstAidData);

  List<Object> get props => [firstAidData];
}
