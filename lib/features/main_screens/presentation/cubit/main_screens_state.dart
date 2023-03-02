part of 'main_screens_cubit.dart';

abstract class MainScreensState extends Equatable {
  const MainScreensState();

  @override
  List<Object> get props => [];
}

class MainScreensInitial extends MainScreensState {}

class GridItemContentChange extends MainScreensState {}

class GridItemContentChanged extends MainScreensState {
  final String imgPath;
  final String title;

  const GridItemContentChanged({required this.imgPath, required this.title});
}
