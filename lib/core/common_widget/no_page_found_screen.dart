import 'package:flutter/material.dart';
import 'package:notes_riverpod_clean_architecture/core/constants/app_strings.dart';

class NoPageFoundScreen extends StatelessWidget {
  const NoPageFoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(AppStrings.noPageFound),
          ],
        ),
      ),
    );
  }
}
