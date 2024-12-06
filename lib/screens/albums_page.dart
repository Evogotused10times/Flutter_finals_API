import 'package:flutter/material.dart';
import '../models/album.dart';
import '../widgets/album_card.dart';
import '../widgets/edit_album_dialog.dart';

class AlbumsPage extends StatefulWidget {
  @override
  _AlbumsPageState createState() => _AlbumsPageState();
}

class _AlbumsPageState extends State<AlbumsPage> {
  // List of albums
  List<Album> albums = [
    Album(id: 1, title: "Die With A Smile", artist: "Bruno Mars ft. Lady Gaga", cover: "lib/assets/images/Bruno.jpg"),
    Album(id: 2, title: "GNX", artist: "Kendrick Lamar", cover: "lib/assets/images/GNX.png"),
    Album(id: 3, title: "Hit Me Hard And Soft", artist: "Billie Eilish", cover: "lib/assets/images/Billie.png"),
    Album(id: 4, title: "The Tortured Poets Department: The Anthology", artist: "Taylor Swift", cover: "lib/assets/images/taylor.jpg"),
    Album(id: 5, title: "Eternal Sunshine", artist: "Ariana Grande", cover: "lib/assets/images/ariana.png"),
    Album(id: 6, title: "Chromakopia", artist: "Tyler the Creator", cover: "lib/assets/images/tyler.jpg"),
    Album(id: 7, title: "Blue Lips", artist: "ScHoolboy Q", cover: "lib/assets/images/Schoolboy.png"),
    Album(id: 8, title: "Only God Was Above Us", artist: "Vampire Weekend", cover: "lib/assets/images/weekend.jpg"),
  ];

  // Function to delete an album
  void deleteAlbum(int id) {
    setState(() {
      albums.removeWhere((album) => album.id == id);
    });
  }

  // Function to edit an album
  void editAlbum(int id) async {
    final index = albums.indexWhere((album) => album.id == id);
    if (index != -1) {
      final updatedAlbum = await showDialog<Album>(
        context: context,
        builder: (context) => EditAlbumDialog(album: albums[index]),
      );

      if (updatedAlbum != null) {
        setState(() {
          albums[index] = updatedAlbum;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Albums')),
      body: ListView.builder(
        itemCount: albums.length,
        itemBuilder: (context, index) {
          return AlbumCard(
            album: albums[index],
            onDelete: deleteAlbum,
            onEdit: editAlbum,
          );
        },
      ),
    );
  }
}
