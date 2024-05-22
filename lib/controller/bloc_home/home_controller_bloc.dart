import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_controller_event.dart';
part 'home_controller_state.dart';

class HomeControllerBloc
    extends Bloc<HomeControllerEvent, HomeControllerState> {
  // state ban đầu là event tabIndex = 0
  HomeControllerBloc() : super(HomeControllerInitial(tabIndex: 0)) {
    on<HomeControllerEvent>((event, emit) {
      //nếu event thay đổi thì cập nhật state
      if (event is HomeChanged) {
        emit(HomeControllerInitial(tabIndex: event.tabIndex));
      }
    });
  }
}
