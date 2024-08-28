import 'dart:convert';

import '../constants/repo_constants.dart';

class UserAccount {
  int id;
  String firstName;
  String lastName;
  String avatar;
  String email;

  UserAccount({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.avatar,
    required this.email,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({RepoConstants.id: id});
    result.addAll({RepoConstants.firstName: firstName});
    result.addAll({RepoConstants.lastName: lastName});
    result.addAll({RepoConstants.avatar: avatar});
    result.addAll({RepoConstants.email: email});

    return result;
  }

  factory UserAccount.fromMap(Map<String, dynamic> map) {
    return UserAccount(
      id: map[RepoConstants.id] ?? '',
      firstName: map[RepoConstants.firstName] ?? '',
      lastName: map[RepoConstants.lastName] ?? '',
      avatar: map[RepoConstants.avatar] ?? '',
      email: map[RepoConstants.email] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory UserAccount.fromJson(String source) => UserAccount.fromMap(json.decode(source));

  String get fullName => firstName + ' ' + lastName;
}
