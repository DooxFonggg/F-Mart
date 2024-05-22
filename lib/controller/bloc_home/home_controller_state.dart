part of 'home_controller_bloc.dart';

@immutable
sealed class HomeControllerState {
  final int tabIndex;

  HomeControllerState({required this.tabIndex});
}

final class HomeControllerInitial extends HomeControllerState {
  HomeControllerInitial({required super.tabIndex});
}
