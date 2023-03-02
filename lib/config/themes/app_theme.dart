import 'package:basrah/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

ThemeData appTheme() {
  return ThemeData(
    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: AppColors.primary,
    ),
    elevatedButtonTheme: _elevatedButtonThemeData(),
    outlinedButtonTheme: _outlineButtonThemeData(),
    appBarTheme: const AppBarTheme(
      color: AppColors.appBarBGColor,
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      iconTheme: IconThemeData(color: AppColors.primary),
      elevation: 0,
    ),
  );
}

ElevatedButtonThemeData _elevatedButtonThemeData() {
  return ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: Colors.white,
      backgroundColor: AppColors.primary,
      minimumSize: Size(double.infinity, 40.h),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.r)),
      elevation: 0,
      textStyle: TextStyle(fontSize: 16.sp),
    ),
  );
}

OutlinedButtonThemeData _outlineButtonThemeData() {
  return OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      textStyle: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
      minimumSize: Size(double.infinity, 50.h),
      side: const BorderSide(
        color: AppColors.primary,
        width: 1,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.r)),
    ),
  );
}
