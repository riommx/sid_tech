import 'package:sid_tech/application/muzeek.dart';
import 'package:sid_tech/domain/muzeek_factory.dart';
import 'package:sid_tech/sid_tech.dart';

Future<void> main() async {
  var vo_name = VOs.name('Sssbbb SSd');
  print(vo_name);

  var artista = Muz.artist(id: 12345, name: 'Sid Souza');
  print(artista);
  print(artista.isValid());
  var mapa = artista.toMap();
  print(mapa);
  print(mapa['id'].runtimeType);
  artista.printInfo();

  var vo_date = VOs.date('2021');
  print(vo_date);
  var muz = Muzeek();
  //await muz.scan();
  await muz.load();
  //print(await muz.save());
}

// ******************************************************************
// *    _____   _   _____      _______   ______    _____   _    _
// *   / ____| | | |  __ \    |__   __| |  ____|  / ____| | |  | |
// *  | (___   | | | |  | |      | |    | |__    | |      | |__| |
// *   \___ \  | | | |  | |      | |    |  __|   | |      |  __  |
// *   ____) | |_| | |__| |      | |    | |____  | |____  | |  | |
// *  |_____/  (_) |_____/       |_|    |______|  \_____| |_|  |_|
// *
// *  ┈┈┈╭━━╮┈┈┈┈┈┈
// *  ┈┈╭╯┊◣╰━━━━╮┈┈
// *  ┈┈┃┊┊┊╱▽▽▽┛┈┈  -< Designed by Sedinir Consentini @ MMXXI >-
// *  ┈┈┃┊┊┊~~~   ┈┈┈┈       -< Rio de Janeiro - Brazil >-
// *  ━━╯┊┊┊╲△△△┓┈┈
// *  ┊┊┊┊╭━━━━━━━╯┈┈    --->  May the source be with you!  <---
// *  v 1.0
//
