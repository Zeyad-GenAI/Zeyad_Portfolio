import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  final String imagePath; // تغيير من IconData إلى String لمسار الصورة
  final Color color;
  final VoidCallback onTap;

  const SocialButton({
    super.key,
    required this.imagePath,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color.withOpacity(0.2),
        ),
        child: Image.asset(
          imagePath,
          width: 24, // تحديد عرض الصورة
          height: 24, // تحديد ارتفاع الصورة
          color: color, // اختياري: لتلوين الصورة إذا لزم الأمر
        ),
      ),
    );
  }
}