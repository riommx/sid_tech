import 'package:sid_tech/domain/vos.dart';

void main() {
  var name1 = VOs.name(null);
  var name2 = VOs.name(null);
  print(name1 == name2);
  print(name2.toString());
}
