import 'package:accounts_app/routes/routes_constants.dart';
import 'package:accounts_repository/accounts_repository.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class UserListView extends StatelessWidget {
  const UserListView(this.userList, {super.key});
  final List<UserAccount> userList;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            'All Users',
            style: GoogleFonts.raleway(fontSize: 35, fontWeight: FontWeight.w800),
          ),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: userList.length,
              itemBuilder: (context, index) {
                final user = userList[index];
                return ListTile(
                  contentPadding: EdgeInsets.zero,
                  onTap: () {
                    GoRouter.of(context).push(RoutesConstants.userDetails, extra: user);
                  },
                  leading: CircleAvatar(
                    radius: 50,
                    backgroundImage: Image.network(user.avatar).image,
                  ),
                  horizontalTitleGap: 0,
                  title: Text(
                    user.fullName,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(user.email),
                );
              }),
        ),
      ],
    );
  }
}
