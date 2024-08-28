import 'package:accounts_repository/src/api/api.dart';
import 'package:accounts_repository/src/api/api_routes.dart';
import 'package:accounts_repository/src/constants/repo_constants.dart';

import 'accounts_repo.dart';
import 'models/account_model.dart';

class DatabaseUserRepo implements AccountsRepository {
  final _api = Api();

  List<UserAccount> _allAccounts = [];

  @override
  Future<List<UserAccount>> fetchAllAccounts() async {
    final response = await _api.sendRequest.get(ApiRoutes.allAccounts);
    final List userAccountsMaps = response.data[RepoConstants.data] as List;
    return _allAccounts =
        userAccountsMaps.map((userAccount) => UserAccount.fromMap(userAccount)).toList();
  }

  @override
  List<UserAccount> get allUserAccounts => _allAccounts;
}
