import 'package:hive/hive.dart';

import '../models/user model.dart';

class Hivedb {
  Hivedb.internal();
  static Hivedb instance = Hivedb.internal();
  factory Hivedb(){ //factory constractor for creatig singleton class
    return instance;    // (these class only one instance)

  }
  Future<void>addUser(User user) async{
    final db =await Hive.openBox<User>('userdata');
    db.put(user.id,user);
  }
  //read user datas from hive db
Future<List<User>> getUser()async{
    final db = await Hive.openBox<User>('userData');
    return db.values.toList();
}
}
