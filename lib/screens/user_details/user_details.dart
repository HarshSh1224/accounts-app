import 'package:accounts_repository/accounts_repository.dart';
import 'package:flutter/material.dart';

class UserDetailPage extends StatelessWidget {
  const UserDetailPage(this.user, {super.key});
  final UserAccount user;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text('User Details'),
    );
  }
}
