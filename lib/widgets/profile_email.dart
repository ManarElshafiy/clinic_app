import 'package:flutter/material.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_text_styles.dart';

class ProfileEmail extends StatelessWidget {
  final String email;

  const ProfileEmail({super.key, required this.email});

  @override
  Widget build(BuildContext context) {
    return Text(
      email,
      style: AppTextStyles.body.copyWith(
        color: AppColors.surface.withOpacity(0.85),
      ),
    );
  }
}