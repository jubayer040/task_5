import 'package:flutter/material.dart';
import 'package:task_5/core/util/mycolor.dart';
import 'package:task_5/core/util/mydimens.dart';

class ProfileLogoutButton extends StatelessWidget {
  const ProfileLogoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.red[100],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.logout, color: MyColor.failedColor),
          const SizedBox(width: 15),
          MyDimens().getBodyTitleText("Log out", context,color: MyColor.failedColor),
        ],
      ),
    );
  }
}
