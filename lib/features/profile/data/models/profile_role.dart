class ProfileRole {
  final int id;
  final String role;
  final String assignTeamRole;
  final String assignTeamTitle;
  final String assignByRole;
  final String assignByTitle;
  final String assignByImage;

  const ProfileRole(
      {required this.id,
      required this.role,
      required this.assignTeamRole,
      required this.assignTeamTitle,
      required this.assignByRole,
      required this.assignByTitle,
      required this.assignByImage});
}
