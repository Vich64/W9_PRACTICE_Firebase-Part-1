import '../../model/artists/artist.dart';

class ArtistDto {
  static const String genreKey = 'genre';
  static const String imageUrlKey = 'imageUrl';
  static const String nameKey = 'name';

  static Artist fromJson(Map<String, dynamic> json, {required String id}) {
    return Artist(
      id: id,                   
      genre: json[genreKey],
      imageUrl: json[imageUrlKey],
      name: json[nameKey],
    );
  }
}