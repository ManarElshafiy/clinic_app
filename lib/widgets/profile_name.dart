import 'package:flutter/material.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_text_styles.dart';

class ProfileName extends StatelessWidget {
  final String name;

  const ProfileName({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: AppTextStyles.headline.copyWith(
        color: AppColors.surface,
      ),
    );
  }
}