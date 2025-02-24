import 'package:flutter/material.dart';
import 'package:notes_riverpod_clean_architecture/core/configs/router/routers.dart';
import 'package:notes_riverpod_clean_architecture/core/configs/themes/app_themes.dart';
import 'package:notes_riverpod_clean_architecture/core/constants/app_constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConstants.appName,
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Routers.generateRoute,
    );
  }
}
