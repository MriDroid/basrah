import 'package:basrah/core/utils/app_constants.dart';
import 'package:basrah/features/bottom_navigation_bar/presentation/cubit/bottom_navigation_bar_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavigationBarScreen extends StatelessWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bnbCubit = context.watch<BottomNavigationBarCubit>();
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: AppConstants.bnbPages[bnbCubit.currentIndex]['body'],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: bnbCubit.currentIndex,
          onTap: bnbCubit.changeCurrentIndex,
          items: AppConstants.bnbItems,
        ),
      ),
    );
  }
}
