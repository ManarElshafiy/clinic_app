import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../widgets/custom_header.dart';
import '../widgets/profile_stats.dart';
import '../widgets/profile_menu_item.dart';
import '../widgets/profile_card.dart';
import '../widgets/profile_header.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});


  static const Color background = Color(0xFFF7F9FB);

  static const String imageUrl =
      "../assets/images/user_profile (1).png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.surface,


      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 18),

            // ✅ Profile Header
            CustomHeader(
              title: "The Clinical Sanctuary",
              imagePath: imageUrl,
              trailing: SvgPicture.asset(
                "assets/icons/green_bell.svg",
              ) ,
            ),

            const SizedBox(height: 14),
            ProfileHeader(
                imageUrl: imageUrl,
                primary: AppColors.surface,
            ),

            // ✅ Profile Stats
            ProfileStats(
              primary: AppColors.surface,
            ),

            const SizedBox(height: 14),

            // ✅ Menu Items
            const ProfileMenuItem(
              iconPath: "assets/icons/ID_card_icon.svg",
              text: "Personal Info",
            ),
            const ProfileMenuItem(
              iconPath: "assets/icons/calender_icon.svg" ,
              text: "Appointment History",
            ),
            const ProfileMenuItem(
              iconPath: "assets/icons/bell_icon.svg",
              text: "Notifications",
            ),
            const ProfileMenuItem(
              iconPath: "assets/icons/payment_card.svg" ,
              text: "Payment Methods",
            ),
            const ProfileMenuItem(
              iconPath: "assets/icons/help_icon.svg" ,
              text: "Help Center",
            ),
            const ProfileMenuItem(
              iconPath: "assets/icons/logout_icon.svg" ,
              text: "Logout",
              isLogout: true,
            ),

            const SizedBox(height: 16),

            // ✅ Bottom Card
            ProfileCard(
              primary: AppColors.primaryDark,
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}