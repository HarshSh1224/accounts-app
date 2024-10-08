import 'package:accounts_app/screens/home/bloc/home_screen_bloc.dart';
import 'package:accounts_app/screens/home/widgets/user_listview.dart';
import 'package:accounts_repository/accounts_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeScreenBloc(context),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Accounts App',
          ),
        ),
        drawer: const Drawer(),
        body: BlocBuilder<HomeScreenBloc, HomeScreenState>(
          builder: (context, state) {
            if (state is HomeScreenInitial) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (state is HomeScreenLoaded) {
              final userAccounts = state.accounts;
              return UserListView(userAccounts);
            }
            if (state is HomeScreenError) {
              return const Center(
                child: Text('Error fetching accounts'),
              );
            }
            return const Scaffold(
              body: Text('Unexpected Error'),
            );
          },
        ),
      ),
    );
  }
}
