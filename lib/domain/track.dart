import 'package:sid_tech/core/entity.dart';
import 'package:sid_tech/core/vo_int.dart';
import 'package:sid_tech/core/vo_string.dart';

class Track extends Entity {
  final VOInt _id;
  final VOString _title;
  final VOInt _duration; // seconds
  final VOInt _albumId;
  final VOInt _artistId;
  final VOString _previewURL;

  const Track(
    this._id,
    this._title,
    this._duration,
    this._albumId,
    this._artistId,
    this._previewURL,
  );

  bool isValid() =>
      _id.isValid() &&
      _title.isValid() &&
      _duration.isValid() &&
      _albumId.isValid() &&
      _artistId.isValid() &&
      _previewURL.isValid();

  // GETTERS ========
  VOInt get id => _id;
  VOString get title => _title;
  VOInt get duration => _duration;
  VOInt get albumId => _albumId;
  VOInt get artistId => _artistId;
  VOString get previewURL => _previewURL;

  Map toMap() => {
        'id': _id.value,
        'title': _title.value,
        'duration': _duration.value,
        'albumId': _albumId.value,
        'artistId': _artistId.value,
        'previewURL': _previewURL.value,
      };

  @override
  String toString() =>
      'id: ${_id.toString()} title: ${_title.toString()} duration: ${_duration.toString()} albumId: ${_albumId.toString()} artistId: ${_artistId.toString()} previewURL: ${_previewURL.toString()}';

  void printInfo() {
    print('-------------------------------------------------------');
    print(
        '${_title.value} (${_id.value}) - ${_duration.value} seconds from ${_albumId.value} by ${_artistId.value} on ${_previewURL.value}');
  }
}
