import 'package:basrah/core/utils/app_images.dart';
import 'package:basrah/features/main_screens/presentation/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppConstants {
  static final List<BottomNavigationBarItem> bnbItems = [
    BottomNavigationBarItem(
        icon: Image.asset(AppImages.bnbIcon1), label: 'الرئيسية'),
    BottomNavigationBarItem(
        icon: Image.asset(AppImages.bnbIcon2), label: 'الزيارات السابقة'),
    BottomNavigationBarItem(
        icon: Image.asset(AppImages.bnbIcon3), label: 'حسابي'),
  ];

  static const List<Map<String, dynamic>> bnbPages = [
    {
      'body': MainScreen(),
    },
    {
      'body': Center(child: Text('الزيارات السابقة')),
    },
    {
      'body': Center(child: Text('حسابي')),
    },
  ];

  static const List<Map<String, dynamic>> gridViewItems = [
    {'imgPath': AppImages.grid1, 'title': "المعرض"},
    {'imgPath': AppImages.grid2, 'title': "خط السير"},
    {'imgPath': AppImages.grid3, 'title': "المباشرة الميدانية"},
    {'imgPath': AppImages.grid4, 'title': "المهام المطلوبة"},
    {'imgPath': AppImages.grid5, 'title': "التذاكر والطلبات"},
    {'imgPath': AppImages.grid6, 'title': "الاشعارات"},
    {'imgPath': AppImages.grid7, 'title': "لوحة معلوماتي"},
    {'imgPath': AppImages.grid8, 'title': "الاداء"},
  ];

  static void openBottomSheet(BuildContext context, Widget body) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30.r),
        ),
      ),
      builder: (context) {
        return body;
      },
    );
  }
}
