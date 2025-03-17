import 'package:flutter/material.dart';
import 'package:task_5/config/theme/app_theme.dart';
import 'package:task_5/features/home/presentation/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task 5',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light(),
      home: const Home()
    );
  }
}
