import 'package:flutter/material.dart';
import 'package:task_5/core/util/mycolor.dart';
import 'package:task_5/core/util/mydimens.dart';
import 'package:task_5/features/profile/data/repository/profile_repo.dart';

class ProfileAssignedRole extends StatelessWidget {
  const ProfileAssignedRole({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final roles = ProfileRepo().assignedRoles;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyDimens().getBodySecondaryText("Assigned roles  (3)", context,
              color: MyColor.textColor),
          const SizedBox(height: 15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                roles.length,
                (i) => Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  width: size.width * .7,
                  margin: EdgeInsets.only(right: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.grey[50],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        roles[i].role,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      MyDimens.cmDivider,
                      MyDimens().getBodySecondaryText(
                          roles[i].assignTeamRole, context),
                      const SizedBox(height: 2),
                      MyDimens().getBodyText(
                        roles[i].assignTeamTitle,
                        context,
                        color: MyColor.textColor,
                        weight: FontWeight.normal,
                      ),
                      const SizedBox(height: 10),
                      MyDimens()
                          .getBodySecondaryText(roles[i].assignByRole, context),
                      const SizedBox(height: 2),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 10,
                            backgroundImage: AssetImage(roles[i].assignByImage),
                          ),
                          const SizedBox(width: 5),
                          MyDimens().getBodyText(
                            roles[i].assignByTitle,
                            context,
                            color: MyColor.textColor,
                            weight: FontWeight.normal,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
