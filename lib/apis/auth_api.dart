import 'package:appwrite/appwrite.dart' as service;
import 'package:appwrite/models.dart' as model;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter_clone/core/core.dart';
import 'package:fpdart/fpdart.dart';

final authAPIProvider = Provider((ref) {
  final account = ref.watch(appwriteAccountProvider);
  return AuthAPI(account: account);
});

abstract class IAuthAPI {
  FutureEither<model.Account> signUp({
    required String email,
    required String password,
  });
}

class AuthAPI implements IAuthAPI {
  final service.Account _account;
  AuthAPI({required service.Account account}) : _account = account;

  @override
  FutureEither<model.Account> signUp({
    required String email,
    required String password,
  }) async {
    try {
      final account = await _account.create(
        userId: service.ID.unique(),
        email: email,
        password: password,
      );
      return right(account);
    } on service.AppwriteException catch (e, stackTrace) {
      return left(
        Failure(e.message ?? "Some unexpected error occurred", stackTrace),
      );
    } catch (e, stackTrace) {
      return left(Failure(e.toString(), stackTrace));
    }
  }
}
