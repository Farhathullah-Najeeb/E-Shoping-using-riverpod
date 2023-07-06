
import 'package:multiple_result/multiple_result.dart';

abstract class IUserModelRepository {

 Future<Result<bool,Exception>>login({required String username,required String password});
}
