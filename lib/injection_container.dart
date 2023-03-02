import 'package:basrah/features/bottom_navigation_bar/presentation/cubit/bottom_navigation_bar_cubit.dart';
import 'package:basrah/features/main_screens/presentation/cubit/main_screens_cubit.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // ******************* Features *******************
  // ******************* -BLoCs *******************
  sl.registerFactory<BottomNavigationBarCubit>(
      () => BottomNavigationBarCubit());
  sl.registerFactory<MainScreensCubit>(() => MainScreensCubit());

  // ******************* -UseCases *******************

  // ******************* -Repositories *******************

  // ******************* -DataSources *******************

  // ******************* Core *******************

  // ******************* Externals *******************
}
