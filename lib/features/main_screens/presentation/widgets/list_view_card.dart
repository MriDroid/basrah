import 'package:basrah/core/utils/app_colors.dart';
import 'package:basrah/core/utils/app_images.dart';
import 'package:basrah/features/main_screens/presentation/widgets/list_view_card_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListViewCard extends StatelessWidget {
  const ListViewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(
          width: 1,
          color: Colors.grey,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const ListViewCardItem(
              imgPath: AppImages.personIcon,
              label: 'احمد محمد',
              fontSize: 18,
            ),
            const ListViewCardItem(
              imgPath: AppImages.phoneIcon,
              label: '01234567891',
              fontSize: 12,
            ),
            const ListViewCardItem(
              imgPath: AppImages.locationIcon,
              label: 'احمد محمد',
              fontSize: 16,
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: OutlinedButton(
                    onPressed: () {},
                    style:
                        Theme.of(context).outlinedButtonTheme.style!.copyWith(
                              minimumSize: MaterialStatePropertyAll(
                                Size(double.infinity, 10.h),
                              ),
                              textStyle: MaterialStatePropertyAll(
                                TextStyle(
                                  fontSize: 14.sp,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                    child: const Text(
                      'واتساب',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  flex: 1,
                  child: OutlinedButton(
                    onPressed: () {},
                    style:
                        Theme.of(context).outlinedButtonTheme.style!.copyWith(
                              minimumSize: MaterialStatePropertyAll(
                                Size(double.infinity, 10.h),
                              ),
                              textStyle: MaterialStatePropertyAll(
                                TextStyle(
                                  fontSize: 14.sp,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                    child: const Text(
                      'الخريطة',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  flex: 2,
                  child: ElevatedButton(
                    onPressed: () {},
                    style:
                        Theme.of(context).elevatedButtonTheme.style!.copyWith(
                              backgroundColor: const MaterialStatePropertyAll(
                                  AppColors.whiteBlue),
                              minimumSize: MaterialStatePropertyAll(
                                Size(double.infinity, 10.h),
                              ),
                              textStyle: MaterialStatePropertyAll(
                                TextStyle(
                                  fontSize: 14.sp,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                    child: const Text('+ اضافة منتج'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
