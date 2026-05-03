import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/app_text_styles.dart';


class CustomHeader extends StatelessWidget {
  final String title;
  final String imagePath;
  final Widget? trailing;
  final VoidCallback? onBack;

  const CustomHeader({
    super.key,
    required this.title,
    required this.imagePath,
    this.trailing,
    this.onBack,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
      decoration: const BoxDecoration(
        color: AppColors.background, // نفس اللون اللي انتي محدداه
      ),
      child: Row(
        children: [
          // زرار الرجوع (اختياري)
          if (onBack != null)
            IconButton(
              onPressed: onBack,
              icon: const Icon(Icons.arrow_back, color: Colors.white),
            ),

          // الصورة
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(imagePath),
          ),

          const SizedBox(width: 12),

          // العنوان
          Expanded(
            child:
            Text(
              title,
              style: AppTextStyles.title,
              ),
          ),

          // عنصر إضافي (icon / button)
          if (trailing != null) trailing!,
        ],
      ),
    );
  }
}