import 'package:flutter/material.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_spacing.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.lg),
      decoration: BoxDecoration(
        color: AppColors.surface.withOpacity(0.15),
        shape: BoxShape.circle,
      ),
      child: const Icon(
        Icons.person,
        size: 80,
        color: AppColors.surface,
      ),
    );
  }
}