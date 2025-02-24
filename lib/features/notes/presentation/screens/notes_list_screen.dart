import 'package:flutter/material.dart';
import 'package:notes_riverpod_clean_architecture/features/notes/domain/entities/notes_entity.dart';
import 'package:notes_riverpod_clean_architecture/features/notes/presentation/widgets/notes_item_widget.dart';

class NotesListScreen extends StatefulWidget {
  const NotesListScreen({super.key});

  @override
  State<NotesListScreen> createState() => _NotesListScreenState();
}

class _NotesListScreenState extends State<NotesListScreen> {
  final List<NotesEntity> _notesList = [
    NotesEntity(id: 0, title: 'Test title', description: 'Test description'),
    NotesEntity(id: 1, title: 'Test title', description: 'Test description'),
    NotesEntity(id: 2, title: 'Test title', description: 'Test description'),
    NotesEntity(id: 3, title: 'Test title', description: 'Test description'),
    NotesEntity(id: 4, title: 'Test title', description: 'Test description'),
    NotesEntity(id: 5, title: 'Test title', description: 'Test description'),
    NotesEntity(id: 6, title: 'Test title', description: 'Test description'),
    NotesEntity(id: 7, title: 'Test title', description: 'Test description'),
    NotesEntity(id: 8, title: 'Test title', description: 'Test description'),
    NotesEntity(id: 9, title: 'Test title', description: 'Test description'),
    NotesEntity(id: 10, title: 'Test title', description: 'Test description'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notes App'),
        centerTitle: false,
        foregroundColor: Colors.white,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _notesList.length,
              itemBuilder: (context, index) => NotesItemWidget(
                index: index + 1,
                notesEntity: _notesList[index],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: IconButton(
        onPressed: () {},
        icon: Icon(Icons.add),
      ),
    );
  }
}
