import 'package:sid_tech/core/entity.dart';
//
import 'package:sid_tech/core/vo_int.dart';
import 'package:sid_tech/core/vo_string.dart';

// class UniqueId extends ValueObject<String> {
//   @override
//   final Either<ValueFailure<String>, String> value;

//   // We cannot let a simple String be passed in. This would allow for possible non-unique IDs.
//   factory UniqueId() {
//     return UniqueId._(
//       right(Uuid().v1()),
//     );
//   }

//   /// Used with strings we trust are unique, such as database IDs.
//   factory UniqueId.fromUniqueString(String uniqueIdStr) {
//     assert(uniqueIdStr != null);
//     return UniqueId._(
//       right(uniqueIdStr),
//     );
//   }

//   const UniqueId._(this.value);
// }
// abstract class IEntity {
//   UniqueId get id;
// }

class Album extends Entity {
  final VOInt _id;
  final VOString _title;
  final VOString _releaseDate; //  DateTime.parse("1969-07-20");
  final VOInt _upc;
  final VOInt _artistId;

  const Album(
      this._id, this._title, this._releaseDate, this._upc, this._artistId);

  bool isValid() =>
      _id.isValid() &&
      _title.isValid() &&
      _releaseDate.isValid() &&
      _upc.isValid() &&
      _artistId.isValid();

  // GETTERS ========
  VOInt get id => _id;
  VOString get title => _title;
  VOString get releaseDate => _releaseDate;
  VOInt get upc => _upc;
  VOInt get artistId => _artistId;

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

// import 'package:dartz/dartz.dart';
// import 'package:flutter/foundation.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:kt_dart/collection.dart';

// import 'package:finished_notes_firebase_ddd_course/domain/core/entity.dart';
// import 'package:finished_notes_firebase_ddd_course/domain/core/failures.dart';
// import 'package:finished_notes_firebase_ddd_course/domain/core/value_objects.dart';
// import 'package:finished_notes_firebase_ddd_course/domain/notes/todo_item.dart';
// import 'package:finished_notes_firebase_ddd_course/domain/notes/value_objects.dart';
// import 'package:finished_notes_firebase_ddd_course/domain/notes/value_objects.dart';

// part 'note.freezed.dart';

// @freezed
// abstract class Note with _$Note implements IEntity {
//   const factory Note({
//     @required UniqueId id,
//     @required NoteBody body,
//     @required NoteColor color,
//     @required List3<TodoItem> todos,
//   }) = _Note;

//   factory Note.empty() => Note(
//         id: UniqueId(),
//         body: NoteBody(''),
//         color: NoteColor(NoteColor.predefinedColors[0]),
//         todos: List3(emptyList()),
//       );
// }

// extension NoteX on Note {
//   Option<ValueFailure<dynamic>> get failureOption {
//     return body.failureOrUnit
//         .andThen(color.failureOrUnit)
//         .andThen(todos.failureOrUnit)
//         .andThen(
//           todos
//               .getOrCrash()
//               .map((todoItem) => todoItem.failureOption)
//               .filter((o) => o.isSome())
//               .getOrElse(0, (_) => none())
//               .fold(() => right(unit), (f) => left(f)),
//         )
//         .fold((f) => some(f), (_) => none());
//   }
// }
