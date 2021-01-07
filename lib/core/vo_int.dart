import 'package:dartz/dartz.dart';
//
import 'package:sid_tech/core/vo.dart';
import 'package:sid_tech/core/failures.dart';

class VOInt extends ValueObject<int> {
  const VOInt(Either<ValueFailure<int>, int> unit) : super(unit);
}
