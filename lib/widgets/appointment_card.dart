import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/app_spacing.dart';
import '../constants/app_text_styles.dart';

class AppointmentCard extends StatelessWidget {
  const AppointmentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          /// IMAGE
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset("assets/images/doctor_photo.png",
              height: 520,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(height: AppSpacing.md),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("CARDIOLOGY SPECIALIST",
                  style: AppTextStyles.label),
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: AppColors.primary.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text("CONFIRMED",
                    style: TextStyle(
                        fontSize: 12,
                        color: AppColors.primary)),
              )
            ],
          ),

          const SizedBox(height: 5),

          Text("Dr. Sarah Al-",
              style: AppTextStyles.title),

          const SizedBox(height: AppSpacing.md),

          Row(
            children: const [
              Icon(Icons.calendar_today, size: 16),
              SizedBox(width: 5),
              Text("Oct 24, 2023"),
              SizedBox(width: 15),
              Icon(Icons.access_time, size: 16),
              SizedBox(width: 5),
              Text("10:30 AM"),
            ],
          ),

          const SizedBox(height: AppSpacing.md),

          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                  ),
                  onPressed: () {},
                  child: const Text("Reschedule"),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: OutlinedButton(
                  onPressed: () {},
                  child: const Text("View Details"),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}