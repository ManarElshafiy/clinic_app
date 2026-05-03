import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class ProfileHeader extends StatelessWidget {
  final String imageUrl;
  final Color primary;

  const ProfileHeader({
    super.key,
    required this.imageUrl,
    required this.primary,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 45,
          backgroundImage: NetworkImage(imageUrl),
        ),
        const SizedBox(height: 10),
        const Text(
          "Dr. John Doe",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const Text(
          "Dentist",
          style: TextStyle(color:AppColors.primaryDark),
        ),
      ],
    );
  }
}