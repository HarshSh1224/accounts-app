import 'package:accounts_repository/accounts_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'package:meta/meta.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_screen_event.dart';
part 'home_screen_state.dart';

class HomeScreenBloc extends Bloc<HomeScreenEvent, HomeScreenState> {
  HomeScreenBloc(BuildContext context) : super(HomeScreenInitial()) {
    try {
      context.read<DatabaseUserRepo>().fetchAllAccounts().then((value) {
        emit(HomeScreenLoaded(accounts: value));
      });
    } catch (e) {
      emit(HomeScreenError());
    }
  }
}
