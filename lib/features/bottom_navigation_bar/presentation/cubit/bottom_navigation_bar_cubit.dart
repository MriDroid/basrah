import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'bottom_navigation_bar_state.dart';

class BottomNavigationBarCubit extends Cubit<BottomNavigationBarState> {
  int currentIndex = 0;
  BottomNavigationBarCubit() : super(BottomNavigationBarInitial());

  void changeCurrentIndex(int index) {
    emit(BottomNavigationBarChangeIndex());
    currentIndex = index;
    emit(BottomNavigationBarIndexChanged(index));
  }
}
