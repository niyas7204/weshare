import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';
part 'current_user_model.g.dart';

@HiveType(typeId: 1)
class CurrentUserModel {
  @HiveField(0)
  String uid;
  @HiveField(1)
  String userName;
  @HiveField(3)
  String email;
  CurrentUserModel(
      {required this.uid, required this.userName, required this.email});
}
