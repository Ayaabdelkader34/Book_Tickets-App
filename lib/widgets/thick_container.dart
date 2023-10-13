import 'package:flutter/material.dart';

class ThickContainer extends StatelessWidget {
  final Color thickColor;

  const ThickContainer({super.key, required this.thickColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0.3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(width: 2.5, color: thickColor),
      ),
    );
  }
}
