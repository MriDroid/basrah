import 'package:basrah/config/routes/app_routes.dart';
import 'package:basrah/core/widgets/default_text_form_field.dart';
import 'package:basrah/features/authentication/presentation/widgets/image_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 0.3.sh,
                  color: Theme.of(context).colorScheme.primary,
                ),
                Container(
                  height: 0.7.sh,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 0),
                  child: Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(height: 0.2.sh),
                        const Text('اسم المستخدم'),
                        const DefaultTextFormField(),
                        const SizedBox(height: 15),
                        const Text('كلمة المرور'),
                        const DefaultTextFormField(),
                        const SizedBox(height: 5),
                        const Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            'نسيت كلمة المرور؟',
                            style: TextStyle(color: Colors.red),
                          ),
                        ),
                        const SizedBox(height: 5),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text('دخول'),
                        ),
                        const SizedBox(height: 50),
                        GestureDetector(
                          onTap: () => Navigator.pushReplacementNamed(
                              context, AppRoutesName.bnbScreen),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'تخطي',
                                style: TextStyle(fontSize: 16),
                              ),
                              Icon(
                                Icons.keyboard_double_arrow_right_rounded,
                                color: Theme.of(context).colorScheme.primary,
                                size: 16.sp,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 0.15.sh,
              left: 0.25.sw,
              child: const ImageContainer(),
            ),
          ],
        ),
      ),
    );
  }
}
