import 'package:flutter/material.dart';

class SiteLogo extends StatelessWidget {
  final VoidCallback onTap;
  const SiteLogo({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        "N_P",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.deepPurple.shade500,
          fontSize: 22,
        ),
      ),
    );
  }
}
