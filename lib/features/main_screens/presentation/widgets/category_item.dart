import 'package:basrah/core/utils/app_constants.dart';
import 'package:basrah/features/main_screens/presentation/cubit/main_screens_cubit.dart';
import 'package:basrah/features/main_screens/presentation/widgets/bottom_sheet_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryItem extends StatelessWidget {
  final String imgPath;
  final String title;
  const CategoryItem({
    super.key,
    required this.imgPath,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<MainScreensCubit>().changeGridItemContent(imgPath, title);
        AppConstants.openBottomSheet(context, const BottomSheetBody());
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Theme.of(context).colorScheme.primary,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: GridTile(
          footer: Center(
            child: Text(
              title,
              style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.bold),
            ),
          ),
          child: Image.asset(imgPath),
        ),
      ),
    );
  }
}
