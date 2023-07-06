// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:e_shoping_app/data/provider/login/i_user_login_provider.dart';
import 'package:multiple_result/multiple_result.dart';
import 'i_login_repository.dart';

class UserModelRepository implements IUserModelRepository {
  IUserLoginProvider iUserLoginProvider;
  UserModelRepository({required this.iUserLoginProvider});
  @override
  Future<Result<bool, Exception>> login(
      {required String username, required String password}) async {
    final result =
        await iUserLoginProvider.login(username: username, password: password);
    
      if (result.statusCode == 200) {
        return const Success(true);
      } else {
        return Error(Exception("Error"));
      }
   
    }
  }

