import 'package:sid_tech/core/entity.dart';
//
import 'package:sid_tech/core/vo_num.dart';
import 'package:sid_tech/core/vo_string.dart';

class Album extends Entity {
  final VONum _id;
  final VOString _title;
  final VOString _releaseDate; //  DateTime.parse("1969-07-20");
  final VONum _upc;
  final VONum _artistId;

  const Album(
      this._id, this._title, this._releaseDate, this._upc, this._artistId);

  bool isValid() =>
      _id.isValid() &&
      _title.isValid() &&
      _releaseDate.isValid() &&
      _upc.isValid() &&
      _artistId.isValid();

  // GETTERS ========
  VONum get id => _id;
  VOString get title => _title;
  VOString get releaseDate => _releaseDate;
  VONum get upc => _upc;
  VONum get artistId => _artistId;

  String get pic => '${_id.value}.jpg';

  String get urlPic =>
      'https://api.deezer.com/album/${_id.value}/image?size=xl';

  @override
  Map toMap() => {
        'id': _id.value.toString(),
        'title': _title.value,
        'releaseDate': _releaseDate.value,
        'upc': _upc.value.toString(),
        'artistId': _artistId.value.toString(),
      };

  @override
  String toString() =>
      'id: ${_id.value} title: ${_title.value} releaseDate: ${_releaseDate.value} upc: ${_upc.value} artistId: ${_artistId.value}';

  void printInfo() {
    print('-------------------------------------------------------');
    print(
        '${_title.value} (${_id.value}) from ${_releaseDate.value} by ${_artistId.value} upc ${_upc.value}');
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
