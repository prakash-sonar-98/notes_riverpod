import 'package:flutter/material.dart';
import 'package:notes_riverpod_clean_architecture/core/common_widget/no_page_found_screen.dart';
import 'package:notes_riverpod_clean_architecture/core/configs/router/route_names.dart';
import 'package:notes_riverpod_clean_architecture/features/notes/presentation/screens/notes_list_screen.dart';

class Routers {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.initialRoute:
        return MaterialPageRoute(
          builder: (context) => NotesListScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => NoPageFoundScreen(),
        );
    }
  }
}
