import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';
part 'user model.g.dart';

@HiveType(typeId: 1)
class User{
  @HiveField(0)
  final String Username;
  @HiveField(1)
  final String password;

  @HiveField(2)
  String? id;
  User({required this.Username,required this.password}){
    id =DateTime.now().microsecondsSinceEpoch.toString();
  }
}