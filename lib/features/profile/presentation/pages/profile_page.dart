import 'package:flutter/material.dart';
import 'package:task_5/core/util/mydimens.dart';
import 'package:task_5/features/profile/presentation/widgets/profile_assigned_role.dart';
import 'package:task_5/features/profile/presentation/widgets/profile_basic_info.dart';
import 'package:task_5/features/profile/presentation/widgets/profile_image_title.dart';
import 'package:task_5/features/profile/presentation/widgets/profile_logout_button.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        MyDimens().getNormalAppBar("My Profile", [], context),
        ProfileImageTitle(),
        Expanded(
          child: Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProfileBasicInfo(),
                  ProfileAssignedRole(),
                  const SizedBox(height: 15),
                  ProfileLogoutButton(),
                ],
              )),
        ),
      ],
    );
  }
}
