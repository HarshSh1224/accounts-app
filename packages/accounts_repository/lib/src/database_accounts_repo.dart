import 'package:accounts_repository/src/api/api.dart';
import 'package:accounts_repository/src/api/api_routes.dart';

import 'accounts_repo.dart';
import 'models/account_model.dart';

class DatabaseUserRepo implements AccountsRepository {
  final _api = Api();

  final List<UserAccount> _allAccounts = [];

  @override
  Future<List<UserAccount>> fetchAllAccounts() async {
    final response = _api.sendRequest.get(ApiRoutes.allAccounts);
    print(response);
    return [];
  }

  @override
  List<UserAccount> get allUserAccounts => [];
}
