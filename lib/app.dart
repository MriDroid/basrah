import 'package:basrah/config/blocs/app_blocs.dart';
import 'package:basrah/config/routes/app_routes.dart';
import 'package:basrah/config/themes/app_theme.dart';
import 'package:basrah/core/utils/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MultiBlocProvider(
          providers: AppBlocProviders.blockProviders,
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: AppStrings.title,
            theme: appTheme(),
            onGenerateRoute: AppRoutes.onGenerateRoute,
          )),
    );
  }
}
