import 'package:hive_flutter/hive_flutter.dart';
part 'user_info.g.dart';

@HiveType(typeId: 1)
class UserInfo {
  @HiveField(0)
  String username;

  @HiveField(1)
  String email;

  @HiveField(2)
  String password;

  UserInfo(this.username, this.email, this.password);
}
