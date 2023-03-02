import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'main_screens_state.dart';

class MainScreensCubit extends Cubit<MainScreensState> {
  String imgPath = '';
  String title = '';
  MainScreensCubit() : super(MainScreensInitial());

  void changeGridItemContent(String imgPath, title) {
    emit(GridItemContentChange());
    this.imgPath = imgPath;
    this.title = title;
    emit(GridItemContentChanged(imgPath: imgPath, title: title));
  }
}
