import 'package:equatable/equatable.dart';

class NotesEntity extends Equatable {
  final int id;
  final String? title;
  final String? description;

  const NotesEntity({
    required this.id,
    this.title,
    this.description,
  });

  @override
  List<Object?> get props => [
        id,
        title,
        description,
      ];
}
