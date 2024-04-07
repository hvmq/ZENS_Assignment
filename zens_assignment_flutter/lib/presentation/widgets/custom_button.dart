import 'package:flutter/material.dart';
import '../../utils/app_utils.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPress,
    required this.text,
    required this.backgroundColor,
  });

  final String text;
  final Color backgroundColor;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPress,
      style: OutlinedButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        backgroundColor: backgroundColor,
        foregroundColor: AppColor.whiteColor,
        side: BorderSide.none,
      ),
      child: Text(
        text,
      ),
    );
  }
}
