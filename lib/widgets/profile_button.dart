import 'package:flutter/material.dart';
import '../../../constants/app_buttons.dart';

class ProfileButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const ProfileButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: AppButtons.primaryButton,
      onPressed: onPressed,
      child: Text(text),
    );
  }
}