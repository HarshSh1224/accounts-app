import 'package:accounts_repository/accounts_repository.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserDetailPage extends StatelessWidget {
  const UserDetailPage(this.user, {super.key});
  final UserAccount user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user.fullName),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _avatar(context),
          _nameRow,
          _emailRow,
        ],
      ),
    );
  }

  Image _avatar(BuildContext context) {
    return Image.network(
      user.avatar,
      width: MediaQuery.of(context).size.width,
      fit: BoxFit.cover,
    );
  }

  Widget get _emailRow {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Text(
        user.email,
        style:
            GoogleFonts.raleway(fontSize: 20, fontWeight: FontWeight.normal, color: Colors.black54),
      ),
    );
  }

  Widget get _nameRow {
    return Padding(
      padding: const EdgeInsets.only(top: 18.0, right: 18, left: 18),
      child: Row(
        children: [
          Text(
            user.firstName.toUpperCase(),
            style: GoogleFonts.raleway(fontSize: 35, fontWeight: FontWeight.w900),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            user.lastName.toUpperCase(),
            style: GoogleFonts.raleway(
                fontSize: 35, fontWeight: FontWeight.w600, color: Colors.black.withOpacity(0.8)),
          )
        ],
      ),
    );
  }
}
