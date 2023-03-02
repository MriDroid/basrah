import 'package:flutter/material.dart';

class ListViewCardItem extends StatelessWidget {
  final String imgPath;
  final String label;
  final double fontSize;
  const ListViewCardItem({
    super.key,
    required this.imgPath,
    required this.label,
    required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Image.asset(imgPath),
          const SizedBox(width: 10),
          Text(
            label,
            style: TextStyle(fontSize: fontSize),
          ),
        ],
      ),
    );
  }
}
