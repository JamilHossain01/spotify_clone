import 'package:flutter/material.dart';
import 'package:spotify_clone/core/configs/assets/assets_vector.dart';
import 'package:spotify_clone/core/configs/themes/app_colors.dart';

class BasicButton extends StatelessWidget {
  const BasicButton(
      {super.key, required this.onPressed, required this.titlel, this.height});
  final VoidCallback onPressed;
  final String titlel;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          minimumSize: Size.fromHeight(height ?? 80),
        ),
        child: Text(
          titlel,
          style: TextStyle(color: Colors.white),
        ));
  }
}
