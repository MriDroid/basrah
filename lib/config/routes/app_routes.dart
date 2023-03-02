import 'package:basrah/core/utils/app_strings.dart';
import 'package:basrah/features/authentication/presentation/screens/login_screen.dart';
import 'package:basrah/features/bottom_navigation_bar/presentation/screens/bottom_navigation_bar_screen.dart';
import 'package:basrah/features/main_screens/presentation/screens/category_screen.dart';
import 'package:basrah/features/main_screens/presentation/screens/new_customer_screen.dart';
import 'package:flutter/material.dart';

class AppRoutesName {
  static const String loginScreen = '/';
  static const String bnbScreen = '/bnb-screen';
  static const String newCustomer = '/new-customer';
  static const String categoryScreen = '/category-screen';
}

class AppRoutes {
  static Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case AppRoutesName.loginScreen:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      case AppRoutesName.bnbScreen:
        return MaterialPageRoute(
          builder: (_) => const BottomNavigationBarScreen(),
        );
      case AppRoutesName.newCustomer:
        return MaterialPageRoute(
          builder: (_) => const NewCustomerScreen(),
        );
      case AppRoutesName.categoryScreen:
        return MaterialPageRoute(
          builder: (_) => const CategoryScreen(),
        );
      default:
        return _undefinedRoute();
    }
  }

  static Route<dynamic> _undefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text(AppStrings.routeNotFound),
        ),
        body: const Center(
          child: Text(
            AppStrings.routeNotFound,
            style: TextStyle(
              fontSize: 25,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
