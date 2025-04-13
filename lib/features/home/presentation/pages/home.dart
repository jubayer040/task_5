import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task_5/core/util/mydialog.dart';
import 'package:task_5/features/contact/presentation/pages/contact_page.dart';
import 'package:task_5/features/home/presentation/widgets/home_navbar.dart';
import 'package:task_5/features/profile/presentation/pages/profile_page.dart';
import 'package:task_5/features/ticket/presentation/pages/ticket_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentPage = 0;
  final List<Widget> _pages = [
    const TicketPage(),
    const ContactPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (bool didPop, dynamic result) async {
        if (!didPop) {
          final shouldPop = await MyDialog().showExitPopup(context);
          if (shouldPop) SystemNavigator.pop();
        }
      },
      child: Scaffold(
        body: _pages[_currentPage],
        bottomNavigationBar:
            HomeNavBar(currentPage: _currentPage, onPageChange: _onPageChange),
      ),
    );
  }

  void _onPageChange(int i) => setState(() => _currentPage = i);
}
