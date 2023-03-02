import 'package:basrah/core/utils/app_constants.dart';
import 'package:basrah/core/utils/app_images.dart';
import 'package:basrah/core/widgets/screen_header.dart';
import 'package:basrah/features/main_screens/presentation/widgets/category_item.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const ScreenHeader(),
          const SizedBox(height: 15),
          Image.asset(AppImages.logoSpread),
          const SizedBox(height: 15),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 1,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
              itemBuilder: (context, index) => CategoryItem(
                imgPath: AppConstants.gridViewItems[index]['imgPath'],
                title: AppConstants.gridViewItems[index]['title'],
              ),
              itemCount: AppConstants.gridViewItems.length,
            ),
          ),
        ],
      ),
    );
  }
}
