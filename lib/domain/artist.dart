import 'package:sid_tech/core/entity.dart';
//
import 'package:sid_tech/core/vo_num.dart';
import 'package:sid_tech/core/vo_string.dart';

class Artist extends Entity {
  final VONum _id;
  final VOString _name;

  const Artist(this._id, this._name);

  bool isValid() => _id.isValid() && _name.isValid();

  // GETTERS ========
  VONum get id => _id;
  VOString get name => _name;

  String get pic => '${_id.value}.jpg';

  String get urlPic =>
      'https://api.deezer.com/artist/${_id.value}/image?size=xl';

  @override
  Map toMap() => {
        'id': _id.value.toString(),
        'name': _name.value,
      };

  @override
  String toString() => 'id: ${_id.toString()} name: ${_name.toString()}';

  void printInfo() {
    print('-------------------------------------------------------');
    print('${_name.value} (${_id.value})');
  }
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
