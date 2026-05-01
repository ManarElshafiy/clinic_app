import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../constants/app_text_styles.dart';
import '../constants/app_spacing.dart';
import '../constants/app_radius.dart';
import '../constants/app_buttons.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.primary, AppColors.secondary],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              // 🔵 Profile Picture Circle
              Container(
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
              ),

              const SizedBox(height: AppSpacing.lg),

              // 👤 User Name
              Text(
                "Your Name",
                style: AppTextStyles.headline.copyWith(
                  color: AppColors.surface,
                ),
              ),

              const SizedBox(height: AppSpacing.sm),

              // 📧 Subtitle / Email / Role
              Text(
                "your.email@example.com",
                style: AppTextStyles.body.copyWith(
                  color: AppColors.surface.withOpacity(0.85),
                ),
              ),

              const SizedBox(height: AppSpacing.xl),

              // 🔘 Action Button
              ElevatedButton(
                style: AppButtons.primaryButton,
                onPressed: () {
                  // TODO: Add edit profile or logout logic
                },
                child: const Text("Edit Profile"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}