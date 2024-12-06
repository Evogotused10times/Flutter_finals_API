import 'package:flutter/material.dart';
import '../models/album.dart';

class AlbumCard extends StatelessWidget {
  final Album album;
  final void Function(int) onDelete;
  final void Function(int) onEdit;

  AlbumCard({required this.album, required this.onDelete, required this.onEdit});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Row(
        children: [
          Image.asset(album.cover, width: 80, height: 80),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(album.title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  Text(album.artist, style: TextStyle(color: Colors.grey)),
                ],
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () => onEdit(album.id),
          ),
          IconButton(
            icon: Icon(Icons.delete),
            onPressed: () => onDelete(album.id),
          ),
        ],
      ),
    );
  }
}
