import 'dart:io';
import 'package:flutter/material.dart';
import 'package:task_5/core/util/mycolor.dart';

class HomeNavBar extends StatelessWidget {
  const HomeNavBar(
      {super.key, required this.currentPage, required this.onPageChange});
  final int currentPage;
  final Function onPageChange;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Platform.isAndroid
          ? kBottomNavigationBarHeight + 16
          : kBottomNavigationBarHeight + 25,
      padding: EdgeInsets.only(
          left: 7, right: 7, bottom: Platform.isAndroid ? 0 : 25),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                offset: Offset(0, 5),
                spreadRadius: 1,blurRadius: 20
              )
            ]
          ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          getNavBarItem(0, Icons.home, Icons.home_outlined, 'Home'),
          getNavBarItem(
              1, Icons.contact_page, Icons.contact_page_outlined, 'Contacts'),
          getNavBarItem(2, Icons.person, Icons.person_outline, 'Profile'),
        ],
      ),
    );
  }

  Widget getNavBarItem(
      int index, IconData selectedIcon, IconData icon, String title) {
    final isSelect = currentPage == index;
    final color = isSelect ? MyColor.skyPrimary : MyColor.textColor;
    return GestureDetector(
      onTap: () => onPageChange(index),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color:isSelect? MyColor.skyPrimary.withOpacity(.15):null,
            ),
            child: Icon(isSelect? selectedIcon:icon, size: 27, color: color),
          ),
          const SizedBox(
            height: 5
          ),
          FittedBox(
            child: Text(
              title,
              style: TextStyle(
                  color: MyColor.textColor, fontSize: 10, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
