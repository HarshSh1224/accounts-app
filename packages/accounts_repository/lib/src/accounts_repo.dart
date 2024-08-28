import 'models/account_model.dart';

abstract class AccountsRepository {
  Future<List<UserAccount>> fetchAllAccounts();

  List<UserAccount> get allUserAccounts;
}
