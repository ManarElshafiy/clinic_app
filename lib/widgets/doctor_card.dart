import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/app_spacing.dart';

class DoctorCard extends StatelessWidget {
  const DoctorCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [

          Row(
            children: [
              const CircleAvatar(
                backgroundImage:
                NetworkImage("https://i.pravatar.cc/150"),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Dr. James Wilson",
                      style:
                      TextStyle(fontWeight: FontWeight.bold)),
                  Text("Dermatology",
                      style: TextStyle(color: Colors.grey)),
                ],
              )
            ],
          ),

          const SizedBox(height: AppSpacing.md),

          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Appointment Date"),
              Text("Oct 28, 2023"),
            ],
          ),

          const SizedBox(height: 6),

          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Session Time"),
              Text("02:15 PM"),
            ],
          ),

          const SizedBox(height: AppSpacing.md),

          Container(
            padding: const EdgeInsets.symmetric(
                horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              color: Colors.orange.withOpacity(0.2),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Text("PENDING PAY"),
          ),

          const SizedBox(height: AppSpacing.md),

          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              minimumSize: const Size(double.infinity, 45),
            ),
            child: const Text("Pay & Confirm"),
          ),

          TextButton(
            onPressed: () {},
            child: const Text("Cancel Appointment",
                style: TextStyle(color: Colors.red)),
          )
        ],
      ),
    );
  }
}