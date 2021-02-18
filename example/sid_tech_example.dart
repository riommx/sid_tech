import 'package:sid_tech/application/muzeek.dart';

Future<void> main() async {
  var muz = await Muzeek.create();
  muz.lengths();
  //await muz.scan(trackFiles: true);
  //await muz.scan(playlists: true);
  //await muz.scan(fromPlaylists: true);
  //await muz.scan(fromTrackFiles: true);
  //await muz.scan(previews: true);
  //await muz.scan(pics: true);
  //await muz.scan(releaseDate: true);
  //muz.checkArtists();
  muz.listTopAlbums(howMany: 10).forEach((element) {
    print(element['album']
        .title
        .value
        .fold((l) => l, (r) => r)); // .getOrElse(() => 'FAILURE'));
  });

  muz.listTopArtists(howMany: 10).forEach((element) {
    print(element['artist'].name.getOrCrash());
  });

  muz.listTopArtists(howMany: 10).forEach((element) {
    print(element['artist'].toString());
  });

  muz.lengths();
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
// ******************************************************************
