import 'package:basrah/config/routes/app_routes.dart';
import 'package:basrah/core/utils/app_colors.dart';
import 'package:basrah/core/widgets/default_text_form_field.dart';
import 'package:basrah/features/main_screens/presentation/cubit/main_screens_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewCustomerScreen extends StatelessWidget {
  const NewCustomerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screensCubit = context.read<MainScreensCubit>();
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white,
                child: Image.asset(
                  screensCubit.imgPath,
                  fit: BoxFit.contain,
                  width: 20,
                  height: 20,
                ),
              ),
              const SizedBox(width: 15),
              Text(screensCubit.title)
            ],
          ),
          actions: [
            GestureDetector(
              child: const Icon(Icons.search),
            ),
            const SizedBox(width: 15),
            GestureDetector(
              child: const Icon(Icons.shopping_cart),
            ),
            const SizedBox(width: 15),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: Text(
                    'تسجيل عميل جديد',
                    style: TextStyle(
                      fontSize: 26,
                      color: AppColors.whiteBlue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: 'اسم العميل',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(text: '     '),
                      TextSpan(
                        text: '*',
                        style: TextStyle(
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ),
                const DefaultTextFormField(),
                const SizedBox(height: 25),
                RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: 'رقم الجوال',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(text: '     '),
                      TextSpan(
                        text: '*',
                        style: TextStyle(
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ),
                const DefaultTextFormField(),
                const SizedBox(height: 50),
                ElevatedButton(
                  onPressed: () => Navigator.pushNamed(
                      context, AppRoutesName.categoryScreen),
                  child: const Text('حفظ'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
