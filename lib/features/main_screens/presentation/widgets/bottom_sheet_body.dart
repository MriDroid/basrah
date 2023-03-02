import 'package:basrah/config/routes/app_routes.dart';
import 'package:basrah/features/main_screens/presentation/cubit/main_screens_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomSheetBody extends StatelessWidget {
  const BottomSheetBody({super.key});

  @override
  Widget build(BuildContext context) {
    final title = context.read<MainScreensCubit>().title;
    return Padding(
      padding: const EdgeInsets.only(right: 25, left: 25, top: 25, bottom: 50),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(title, style: TextStyle(fontSize: 24, color: Colors.grey[700])),
          const SizedBox(height: 10),
          OutlinedButton(
              onPressed: () {}, child: const Text('التسجيل لعميل حالي')),
          const SizedBox(height: 10),
          OutlinedButton(
              onPressed: () => Navigator.pushNamed(
                    context,
                    AppRoutesName.newCustomer,
                  ),
              child: const Text('التسجيل لعميل جديد')),
        ],
      ),
    );
  }
}
