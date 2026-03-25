class Song {
  final String artistId;
  final Duration duration;
  final Uri imageUrl;
  final String title;

  Song({
    required this.artistId,
    required this.imageUrl,
    required this.duration,
    required this.title, required id, 
  });

  @override
  String toString() {
    return 'Song(id: $artistId, title: $title, Image: $imageUrl, duration: $duration)';
  }
}
