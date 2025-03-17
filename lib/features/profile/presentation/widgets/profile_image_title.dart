import 'package:flutter/material.dart';
import 'package:task_5/core/util/mycolor.dart';
import 'package:task_5/core/util/mydimens.dart';
import 'package:task_5/core/util/myimage.dart';

class ProfileImageTitle extends StatelessWidget {
  const ProfileImageTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
          color: MyColor.skyPrimary.withOpacity(0.2),
          padding: EdgeInsets.symmetric(horizontal:  15,vertical: 20),
          child: Row(
            children: [
              CircleAvatar(backgroundImage: AssetImage(MyImage.placeholderImg)),
              const SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyDimens().getBodyTitleText ("Jb Jason",context),
                  MyDimens().getBodyText("Support", context),
                ],
              ),
              Spacer(),
              Icon(Icons.edit),
            ],
          ),
        );
  }
}