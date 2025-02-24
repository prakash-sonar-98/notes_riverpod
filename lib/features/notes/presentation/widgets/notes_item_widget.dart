import 'package:flutter/material.dart';

import '../../domain/entities/notes_entity.dart';

class NotesItemWidget extends StatelessWidget {
  final int index;
  final NotesEntity notesEntity;
  const NotesItemWidget({
    super.key,
    required this.index,
    required this.notesEntity,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Text('$index'),
      ),
      title: Text(notesEntity.title ?? ''),
      subtitle: Text(notesEntity.description ?? ''),
    );
  }
}
