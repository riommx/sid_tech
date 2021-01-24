import 'package:sid_tech/domain/vos.dart';

void main() {
  var name1 = VOs.name2('Sid');
  var name2 = VOs.name2('Elisa');
  print(name1 == name2);
  print(name2.toString());
  print(name1.value);
  print(name1.value.fold((l) => l, (r) => r));
  print(name1.getOrElse('Davi'));
  print(name2.getOrElse('Golias'));

  var int1 = VOs.idInt(3);
  var int2 = VOs.idInt(4);
  print(int1 == int2);
  print(int2.toString());
  print(int1.value);
  print(int1.value.fold((l) => l, (r) => r));
  print(int1.getOrElse(0));
  print(int2.getOrElse(0));

  var double1 = VOs.idDouble(null); // (1.5);
  var double2 = VOs.idDouble(4.5);
  print(double1 == double2);
  print(double2.toString());
  print(double1.value);
  print(double1.value.fold((l) => l, (r) => r));
  print(double1.getOrElse(0.7));
  print(double2.getOrElse(0.3));
}
