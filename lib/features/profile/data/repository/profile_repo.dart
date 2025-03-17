import 'package:task_5/core/util/myimage.dart';
import 'package:task_5/features/profile/data/models/profile_role.dart';

class ProfileRepo {
  final assignedRoles = [
  const  ProfileRole(
      id: 1,
      role: "Manager",
      assignTeamRole: "Group",
      assignTeamTitle: "Optimization Support",
      assignByRole: "Manager",
      assignByTitle: "Jb Jason",
      assignByImage: MyImage.placeholderImg,
    ),
  const  ProfileRole(
      id: 2,
      role: "Agent",
      assignTeamRole: "Group",
      assignTeamTitle: "Optimization Support",
      assignByRole: "Manager",
      assignByTitle: "Jb Jason",
      assignByImage: MyImage.placeholderImg,
    ),
  const  ProfileRole(
      id: 3,
      role: "Manager",
      assignTeamRole: "Group",
      assignTeamTitle: "Optimization Support",
      assignByRole: "Manager",
      assignByTitle: "Jb Jason",
      assignByImage: MyImage.placeholderImg,
    ),
  ];
}
