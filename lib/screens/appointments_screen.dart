import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/app_spacing.dart';
import '../constants/app_text_styles.dart';

import '../widgets/appointment_card.dart';
import '../widgets/doctor_card.dart';
import '../widgets/monthly_checkup_card.dart';

class AppointmentsScreen extends StatefulWidget {
  const AppointmentsScreen({super.key});

  @override
  State<AppointmentsScreen> createState() => _AppointmentsScreenState();
}

class _AppointmentsScreenState extends State<AppointmentsScreen> {
  int selectedTab = 0;

  final tabs = ["Upcoming", "Completed", "Cancelled"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      /// Bottom Nav (زي الصورة)
      bottomNavigationBar: _buildBottomNav(),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.md),
          child: ListView(
            children: [

              /// HEADER
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("My Appointments",
                      style: AppTextStyles.headline),
                  const Icon(Icons.notifications_none)
                ],
              ),

              const SizedBox(height: AppSpacing.sm),

              Text(
                "Manage your path to wellness and recovery.",
                style: AppTextStyles.body,
              ),

              const SizedBox(height: AppSpacing.lg),

              /// TABS
              Row(
                children: List.generate(tabs.length, (index) {
                  return _buildTab(index);
                }),
              ),

              const SizedBox(height: AppSpacing.lg),

              /// Cards
              const AppointmentCard(),

              const SizedBox(height: AppSpacing.lg),

              const DoctorCard(),

              const SizedBox(height: AppSpacing.lg),

              const MonthlyCheckupCard(),

              const SizedBox(height: 80),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTab(int index) {
    final isActive = selectedTab == index;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedTab = index;
        });
      },
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        padding: const EdgeInsets.symmetric(
            horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: isActive
              ? AppColors.primary
              : Colors.grey.shade200,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          tabs[index],
          style: TextStyle(
            color: isActive ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }

  Widget _buildBottomNav() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(blurRadius: 10, color: Colors.black12)
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          Icon(Icons.home_outlined),
          Icon(Icons.calendar_today, color: AppColors.primary),
          Icon(Icons.chat_bubble_outline),
          Icon(Icons.person_outline),
        ],
      ),
    );
  }
}