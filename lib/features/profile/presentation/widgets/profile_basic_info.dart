import 'package:flutter/material.dart';
import 'package:task_5/core/util/mycolor.dart';
import 'package:task_5/core/util/mydimens.dart';

class ProfileBasicInfo extends StatelessWidget {
  const ProfileBasicInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // title
          MyDimens().getBodySecondaryText("Basic info", context,
              color: MyColor.textColor),
          const SizedBox(height: 10),
          // name
          _getBasicInfoItem("First Name", "Jb", context),
          // last-name
          _getBasicInfoItem("Last Name", "Jason", context),
          // email
          _getBasicInfoItem("Email", "jubayeral040@gmail.com", context),
        ],
     
    );
  }

  Widget _getBasicInfoItem(
      String secondaryTitle, String bodyTitle, BuildContext ctx) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 3),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyDimens().getBodySecondaryText(secondaryTitle, ctx),
          MyDimens().getBodyTitleText(bodyTitle, ctx),
        ],
      ),
    );
  }
}
