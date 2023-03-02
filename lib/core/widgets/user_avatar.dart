import 'package:basrah/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          backgroundColor: Colors.white,
          radius: 25.r,
          child: Image.asset(AppImages.bnbIcon3),
        ),
        Positioned(
          bottom: 5,
          left: 5,
          child: CircleAvatar(
            radius: 4.r,
            backgroundColor: Colors.green,
          ),
        ),
      ],
    );
  }
}
