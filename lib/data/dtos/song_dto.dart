    import '../../model/songs/song.dart';

class SongDto {
  static const String imageKey = 'imageUrl';
  static const String titleKey = 'title';
  static const String artistKey = 'artistId';
  static const String durationKey = 'durationMs';   // in ms

  static Song fromJson(String idKey,Map<String, dynamic> json) {
    assert(json[imageKey] is String);
    assert(json[titleKey] is String);
    assert(json[artistKey] is String);
    assert(json[durationKey] is int);

    return Song(
      id: idKey,
      imageUrl: json[imageKey],
      title: json[titleKey],
      artistId: json[artistKey],
      duration: Duration(milliseconds: json[durationKey]), 
    );
  }

  /// Convert Song to JSON
  Map<String, dynamic> toJson(Song song) {
    return {
      imageKey: song.imageUrl,
      titleKey: song.title,
      artistKey: song.artistId,
      durationKey: song.duration.inMilliseconds,
    };
  }
}
