


import 'api_/user_sheet_api.dart';
import 'model/user.dart';

class Controller {
  User? user;
  String a = '';
    List<dynamic> arr = <dynamic>[];
    List<dynamic> getArr() => arr;
  Future<List<dynamic>> getUser() async {
    for (int i = 0; i < 19; i++) {
      final user = await UserSheetsApi.getById(i + 1);
      //final user = await UserSheetsApi.getAll();
      // print(user?.name);
      arr.add(user);
    }
    // for (int i = 0; i < 10; i++) {
    //   // print(arr[i].toStrin);
    // }
    return arr;
  }
}