import 'package:hive/hive.dart';
import 'package:soft/user_info.dart';

class UserService {
  final String _boxName = "userBox";

  Future<Box<UserInfo>> get _box async =>
      await Hive.openBox<UserInfo>(_boxName);

  Future<void> addUser(UserInfo userinfo) async {
    var box = await _box;
    await box.add(userinfo);
  }

  Future<List<UserInfo>> getUsers() async {
    var box = await _box;
    return box.values.toList();
  }

  Future<void> deleteUser(String username) async {
    var box = await _box;
    var users = box.values.toList();

    var index = users.indexWhere((user) => user.username == username);

    if (index != -1) {
      //If user is found
      await box.deleteAt(index);
    } else {
      print('Error');
    }
  }

  Future<void> updateUser(String username, UserInfo userinfo) async {
    var box = await _box;
    var users = box.values.toList();

    //Find user in the list
    var index = users.indexWhere((user) => user.username == username);

    if (index != -1) {
      //If user is found
      await box.putAt(index, userinfo);
    } else {
      print('Error');
    }
  }
}
