import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_5/config/theme/app_theme.dart';
import 'package:task_5/features/contact/presentation/provider/contact_provider.dart';
import 'package:task_5/features/home/presentation/pages/home.dart';
import 'package:task_5/features/ticket/presentation/provider/ticket_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => TicketProvider()),
        ChangeNotifierProvider(create: (_) => ContactProvider()),
      ],
      child: MaterialApp(
        title: 'Task 5',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.light(),
        home: const Home(),
      ),
    );
  }
}
