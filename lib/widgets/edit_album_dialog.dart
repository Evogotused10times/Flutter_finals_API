import 'package:flutter/material.dart';
import '../models/album.dart';

class EditAlbumDialog extends StatefulWidget {
  final Album album;

  EditAlbumDialog({required this.album});

  @override
  _EditAlbumDialogState createState() => _EditAlbumDialogState();
}

class _EditAlbumDialogState extends State<EditAlbumDialog> {
  late TextEditingController _titleController;
  late TextEditingController _artistController;

  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController(text: widget.album.title);
    _artistController = TextEditingController(text: widget.album.artist);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Edit Album'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: _titleController,
            decoration: InputDecoration(labelText: 'Title'),
          ),
          TextField(
            controller: _artistController,
            decoration: InputDecoration(labelText: 'Artist'),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context), // Cancel edit
          child: Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: () {
            // Save changes
            Navigator.pop(
              context,
              Album(
                id: widget.album.id,
                title: _titleController.text,
                artist: _artistController.text,
                cover: widget.album.cover,
              ),
            );
          },
          child: Text('Save'),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _titleController.dispose();
    _artistController.dispose();
    super.dispose();
  }
}
