import 'package:sid_tech/core/entity.dart';
//
import 'package:sid_tech/core/vo_int.dart';
import 'package:sid_tech/core/vo_string.dart';

class Album extends Entity {
  final VOInt _id;
  final VOString _title;
  final VOString _releaseDate; //  DateTime.parse("1969-07-20");
  final VOInt _artistId;

  const Album(this._id, this._title, this._releaseDate, this._artistId);

  bool isValid() =>
      _id.isValid() &&
      _title.isValid() &&
      _releaseDate.isValid() &&
      _artistId.isValid();

  // GETTERS ========
  VOInt get id => _id;
  VOString get title => _title;
  VOString get releaseDate => _releaseDate;
  VOInt get artistId => _artistId;

  String get pic => '${_id.value}.jpg';

  String get urlPic =>
      'https://api.deezer.com/album/${_id.value}/image?size=xl';

  @override
  Map toMap() => {
        'id': _id.value,
        'title': _title.value,
        'releaseDate': _releaseDate.value,
        'artistId': _artistId.value,
      };

  @override
  String toString() =>
      'id: ${_id.toString()} title: ${_title.toString()} releaseDate: ${_releaseDate.toString()} artistId: ${_artistId.toString()}';

  void printInfo() {
    print('-------------------------------------------------------');
    print(
        '${_title.value} (${_id.value}) from ${_releaseDate.value} by ${_artistId.value}');
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
