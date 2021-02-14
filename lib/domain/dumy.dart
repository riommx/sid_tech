import 'package:dartz/dartz.dart';
//import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sid_tech/core/value_failure.dart';
import 'package:sid_tech/core/vo_int.dart';
import 'package:sid_tech/core/vo_string.dart';

part 'dumy.freezed.dart';

@freezed
abstract class Note with _$Note {
  const factory Note({
    @required VOInt id,
    @required VOString body,
  }) = _Note;
}

extension NoteX on Note {
  Option<ValueFailure<dynamic>> get failureOption {
    return body.failureOrUnit.fold((f) => some(f), (_) => none());
  }
}
