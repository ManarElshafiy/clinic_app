import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileMenuItem extends StatelessWidget {
  final String iconPath;
  final String text;
  final bool isLogout;

  const ProfileMenuItem({
    super.key,
    required this.iconPath,
    required this.text,
    this.isLogout = false,
  });

  @override
  Widget build(BuildContext context) {
    // Define the background color based on whether it's a logout item
    final Color backgroundColor = isLogout
        ? Colors.red.withOpacity(0.1)
        : Colors.blue.withOpacity(0.1);

    final Color iconColor = isLogout ? Colors.red : Colors.blue.shade900;

    return ListTile(
      leading: Container(
        width: 44,
        height: 44,
        decoration: BoxDecoration(
          color: backgroundColor,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: SvgPicture.asset(
            iconPath,
            height: 22,
            width: 22,
            // ignore: deprecated_member_use
            color: iconColor, // Colors the SVG icon to match your design
          ),
        ),
      ),
      title: Text(
        text,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: isLogout ? Colors.red : Colors.black87,
        ),
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
        size: 16,
        color: isLogout ? Colors.red.withOpacity(0.5) : Colors.grey,
      ),
      onTap: () {
        // Add your navigation logic here
      },
    );
  }
}