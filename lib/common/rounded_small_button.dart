import 'package:flutter/material.dart';
import 'package:twitter_clone/theme/theme.dart';

class RoundedSmallButton extends StatelessWidget {
  final String label;
  final VoidCallback onTab;
  final Color textColor;
  final Color backgroundColor;

  const RoundedSmallButton({
    super.key,
    required this.label,
    required this.onTab,
    this.backgroundColor = Palette.whiteColor,
    this.textColor = Palette.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTab,
      child: Chip(
        label: Text(
          label,
          style: TextStyle(color: textColor),
        ),
        backgroundColor: backgroundColor,
        labelPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 5,
        ),
      ),
    );
  }
}
