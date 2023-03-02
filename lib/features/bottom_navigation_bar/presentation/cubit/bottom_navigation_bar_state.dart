part of 'bottom_navigation_bar_cubit.dart';

abstract class BottomNavigationBarState extends Equatable {
  const BottomNavigationBarState();

  @override
  List<Object> get props => [];
}

class BottomNavigationBarInitial extends BottomNavigationBarState {}

class BottomNavigationBarChangeIndex extends BottomNavigationBarState {}

class BottomNavigationBarIndexChanged extends BottomNavigationBarState {
  final int currentIndex;
  const BottomNavigationBarIndexChanged(this.currentIndex);

  @override
  List<Object> get props => [currentIndex];
}
