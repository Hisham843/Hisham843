
import 'package:sqflite/sqflite.dart' as sql;
class SQLHelper{
  static Future<sql.Database> createDB() async{
    return sql.openDatabase("myContacts.db",
        version: 1,
        onCreate: (sql.Database database , int version) async{
          await createTable(database);
        }
    );
  }
// table for storing values in db
  static Future<void> createTable(sql.Database database) async {
    await database.execute("""CREATE TABLE contacts(
        id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        cname TEXT,
        cnumber TEXT,
        createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
      )""");
  }
// save name and contacts to contact table
  static Future<int> create_contact (String name,String phonenum)async{
    final db = await SQLHelper.createDB();
    final data = {'cname' : name,'cnumber' : phonenum};
    // insert to a particular table with values as map
    final id = await db.insert("contacts", data);
    return id;
  }

  static Future<List<Map<String,dynamic>>> readContact() async{
    final db = await SQLHelper.createDB();
    return db.query('contacts',orderBy: 'id');
  }
  static Future<int> updateContact(int id,String name,String phone)async{
    final db =await SQLHelper.createDB();
    final newdata={
      'cname':name,
      'cnumber':phone,
      'createdAt':DateTime.now().toString()
    };
    final upid=await db.update('contacts',newdata,where:'id=?',whereArgs:[id]);
    return upid;
  }

  static Future<void>deleteContact(int id)async{
    final db =await SQLHelper.createDB();
    try{
      await db.delete('contacts',where: 'id =?',whereArgs: [id]);
    }catch(e){
      throw Exception();
    }
  }

}