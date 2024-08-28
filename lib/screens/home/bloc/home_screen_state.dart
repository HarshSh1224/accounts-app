part of 'home_screen_bloc.dart';

@immutable
sealed class HomeScreenState {}

final class HomeScreenInitial extends HomeScreenState {}

final class HomeScreenLoaded extends HomeScreenState {
  final List<UserAccount> accounts;

  HomeScreenLoaded({required this.accounts});
}

final class HomeScreenError extends HomeScreenState {}
