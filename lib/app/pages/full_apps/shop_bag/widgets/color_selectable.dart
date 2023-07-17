import 'package:flutter/material.dart';

class ColorSelectable extends StatelessWidget {
  final bool isSelected;
  final Color color;

  ColorSelectable({super.key, this.isSelected = false, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 24,
      height: 24,
      margin: const EdgeInsets.only(
        right: 10,
        top: 5,
      ),
      padding: EdgeInsets.all(2.5),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? color : Colors.transparent,
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
