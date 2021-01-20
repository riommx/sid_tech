import 'package:sid_tech/core/entity.dart';
//
import 'package:sid_tech/core/vo_num.dart';
import 'package:sid_tech/core/vo_string.dart';

class Playlist extends Entity {
  final VONum _id;
  final VOString _name;
  final List<VONum> _tracks;

  const Playlist(this._id, this._name, this._tracks);

  bool isValid() {
    var valid = true;
    for (var track in _tracks) {
      valid = valid && track.isValid();
    }
    return valid && _id.isValid() && _name.isValid();
  }

  // GETTERS ========
  VONum get id => _id;
  VOString get name => _name;
  List<VONum> get tracks => _tracks;

  @override
  Map toMap() => {
        'id': _id.value.toString(),
        'name': _name.value,
        'tracks': _tracksToList(),
      };

  List _tracksToList() {
    var list = [];
    _tracks.forEach((t) => list.add(t.value.toString()));
    return list;
  }

  @override
  String toString() =>
      'id: ${_id.toString()} name: ${_name.toString()} tracks: ${_tracks.toString()}';

  void printInfo() {
    print('-------------------------------------------------------');
    print('${_name.value} (${_id.value})');
    print('tracks: ${_tracks.toString()}');
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
