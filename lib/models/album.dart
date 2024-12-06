
class Album {
  final int id;
  final String title; 
  final String artist; 
  final String cover; 

  Album({
    required this.id,
    required this.title,
    required this.artist,
    required this.cover,
  });

  
  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      id: json['id'] as int,
      title: json['title'] as String,
      artist: json['artist'] as String,
      cover: json['cover'] as String,
    );
  }

  
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'artist': artist,
      'cover': cover,
    };
  }
}
