import "package:api_flutter_app/models/user.dart";
import 'package:api_flutter_app/services/services_handler.dart';


class UsersService {
  String endPoint = "/users";
  
  Future<List<User>> getUsers() async {
  try{
      // ignore: unused_local_variable
      Map<String, dynamic> response =
    await ServicseHandler().getService(endPoint);
    Iterable usersData = response['data'];
    List<User> usersList =
     usersData.map((item) => User.fromJson(item)).toList();
     return usersList;
  }
  catch(error){
    throw Exception('can not get any users');
  }
  }
}