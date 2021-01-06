import 'package:sid_tech/core/vo_int.dart';
import 'package:sid_tech/core/vo_string.dart';

class Artist {
  final IntVO _id;
  final StringVO _name;

  const Artist(this._id, this._name);

  bool isValid() => _id.isValid() && _name.isValid();

  // GETTERS ========
  IntVO get id => _id;
  StringVO get name => _name;

  Map toMap() => {
        'id': _id.value,
        'name': _name.value,
      };

/*
  static Artist fromMap({@required Map map}) {
    final id = int.parse(map['id']);
    final name = map['name'];
    return Artist(
      id.toInt(),
      name,
    );
  }

  static String namePic({int artist, int album}) {
    return '${artist}.jpg';
  }

  static String urlPic({int id}) {
    return 'https://api.deezer.com/artist/${id}/image?size=xl';
  }

  void printInfo() {
    print('----------------');
    print('$id - $name');
  }*/
  @override
  String toString() => 'id: ${_id.toString()} name: ${_name.toString()}';
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
// *  ┈┈┃┊┊┊╱▽▽▽┛┈┈  -< Designed by Sedinir Consentini @ 2021 >-
// *  ┈┈┃┊┊┊~~~   ┈┈┈┈       -< Rio de Janeiro - Brazil >-
// *  ━━╯┊┊┊╲△△△┓┈┈
// *  ┊┊┊┊╭━━━━━━╯┈┈   --->  May the source be with you!  <---
// * v 1.0
// ******************************************************************
