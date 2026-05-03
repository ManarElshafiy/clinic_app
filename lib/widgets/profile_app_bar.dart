import 'package:flutter/material.dart';

class ProfileAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String imageUrl;

  const ProfileAppBar({
    super.key,
    required this.imageUrl,
  });

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFF006565),
      elevation: 0,
      title: const Text("Profile"),
      centerTitle: true,
    );
  }
}