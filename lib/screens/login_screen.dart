import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/app_buttons.dart';
import '../constants/app_text_styles.dart';
import '../constants/app_spacing.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Padding(
        padding: const EdgeInsets.all(AppSpacing.md),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text("Welcome Back", 
                 style: AppTextStyles.headline, 
                 textAlign: TextAlign.center),
            const SizedBox(height: AppSpacing.xxl),
            
            const TextField(
              decoration: InputDecoration(
                labelText: "Email",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: AppSpacing.md),
            
            const TextField(
              decoration: InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            const SizedBox(height: AppSpacing.lg),
            
            ElevatedButton(
              style: AppButtons.primaryButton,
              onPressed: () {
                // هنا لما المستخدم يدوس دخول
              },
              child: const Text("Signin"),
            ),
          ],
        ),
      ),
    );
  }
}