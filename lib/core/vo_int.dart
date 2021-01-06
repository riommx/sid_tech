import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
//
import 'package:sid_tech/core/vo.dart';
import 'package:sid_tech/core/validators.dart';
import 'package:sid_tech/core/failures.dart';

class IntVO extends ValueObject<int> {
  const IntVO._(Either<ValueFailure<int>, int> value) : super(value);

  factory IntVO({
    @required int value,
    int maxValue,
    int minValue,
    RegExp regex,
  }) {
    //
    Either<ValueFailure<int>, int> vo;
    //
    final validations = [];
    validations.add({'function': validateIntValueNotNull, 'parameter': IntVO});
    if (maxValue != null) {
      validations.add({'function': validateMaxValue, 'parameter': maxValue});
    }
    if (minValue != null) {
      validations.add({'function': validateMinValue, 'parameter': minValue});
    }
    if (regex != null) {
      validations.add({'function': validateIntRegex, 'parameter': regex});
    }
/*
if ( != null) {
      validations.add({'function': , 'parameter': });
    }
*/
    var i = 0;
    do {
      vo = validations[i]['function'].call(
        value,
        validations[i]['parameter'],
      );
      i++;
    } while (vo.isRight() && i < validations.length);
    //
    return IntVO._(vo);
  }
}
