import 'package:sid_tech/core/entity.dart';
//
import 'package:sid_tech/core/vo_int.dart';
import 'package:sid_tech/core/vo_string.dart';

class TrackFiles extends Entity {
  final VOInt _id;
  final List<VOString> _files;

  const TrackFiles(this._id, this._files);

  bool isValid() {
    var valid = true;
    for (var file in _files) {
      valid = valid && file.isValid();
    }
    return valid;
  }

  // GETTERS ========
  VOInt get id => _id;
  List<VOString> get files => _files;

  Map toMap() => {
        'id': _id.value,
        'files': _filesToList(),
      };

  List<String> _filesToList() {
    var list = [];
    _files.forEach((f) => list.add(f.value));
    return list;
  }

  @override
  String toString() => 'id: ${_id.toString()} files: ${_files.toString()}';

  void printInfo() {
    print('-------------------------------------------------------');
    print(_id.value);
    _files.forEach((f) => print(f.value));
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
