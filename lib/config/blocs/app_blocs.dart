import 'package:basrah/features/bottom_navigation_bar/presentation/cubit/bottom_navigation_bar_cubit.dart';
import 'package:basrah/features/main_screens/presentation/cubit/main_screens_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBlocProviders {
  static final blockProviders = [
    BlocProvider<BottomNavigationBarCubit>.value(
        value: BottomNavigationBarCubit()),
    BlocProvider<MainScreensCubit>.value(value: MainScreensCubit()),
  ];
}
