part of 'home_controller_bloc.dart';

@immutable
sealed class HomeControllerEvent {}

class HomeChanged extends HomeControllerEvent {
  final int tabIndex;

  HomeChanged({required this.tabIndex});
}
