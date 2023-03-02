import 'package:basrah/core/widgets/user_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScreenHeader extends StatelessWidget {
  const ScreenHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      color: Theme.of(context).appBarTheme.backgroundColor,
      height: 0.11.sh,
      width: 1.sw,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          // mainAxisSize: MainAxisSize.min,
          children: [
            const UserAvatar(),
            const SizedBox(width: 10),
            Expanded(
              flex: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: const [
                  Text(
                    'أحمد محمد',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, height: 1, fontSize: 16),
                  ),
                  Text(
                    'متاح',
                    style:
                        TextStyle(color: Colors.green, height: 1, fontSize: 12),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: ElevatedButton(
                onPressed: () {},
                style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
                      minimumSize: MaterialStatePropertyAll(
                        Size(double.infinity, 25.h),
                      ),
                    ),
                child: const Text(
                  'تغيير الحالة',
                  style: TextStyle(fontSize: 12),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
