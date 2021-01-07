import 'package:sid_tech/core/vo_int.dart';
import 'package:sid_tech/core/vo_int_factory.dart';
import 'package:sid_tech/core/vo_string.dart';
import 'package:sid_tech/core/vo_string_factory.dart';

// TODO: FORMATAR TIPOS
abstract class VOs {
  static VOString name(String value) => VOStringFactory().create(
      value: value,
      maxLength: 10,
      minLength: 3,
      regex: RegExp(r'[A-Z]{1}[a-z]* [A-Z]{1}[a-z]*'));

  static VOString title(String value) => VOStringFactory().create(
      value: value,
      maxLength: 10,
      minLength: 3,
      regex: RegExp(r'[A-Z]{1}[a-z]* [A-Z]{1}[a-z]*'));

  static VOInt id(int value) => VOIntFactory()
      .create(value: value, maxValue: 20000, regex: RegExp(r'^[0-9]{5}$'));

  static VOString date(String value) =>
      VOStringFactory().create(value: value, dateTime: true);

  static VOInt seconds(int value) =>
      VOIntFactory().create(value: value, minValue: 1);

  static VOString url(String value) => VOStringFactory().create(
        value: value,
      );
}
