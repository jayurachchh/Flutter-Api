 import 'dart:io';
import 'package:first/model/user.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';
import 'package:path/path.dart';

import '../model/Tbl_User.dart';
class Database1
{
  Future<Database> initDatabase() async {
    Directory appDocDir = await getApplicationDocumentsDirectory();
    String databasePath = join(appDocDir.path, 'Test.db');
    return await openDatabase(
      databasePath,
      version: 2,
    );
  }
  Future<bool> copyPasteAssetFileToRoot() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, 'Test.db');
    if (FileSystemEntity.typeSync(path) == FileSystemEntityType.notFound)
    {
      ByteData data =
      await rootBundle.load(join('assets/database/', 'Test.db'));
      List<int> bytes =
      data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
      await new File(path).writeAsBytes(bytes);
      return true;
    }
    return false;
  }
  Future <List<User>> getdatafromuser() async
  {
    List<User>userlist=[];
      Database db=await initDatabase();
      List<Map<String, Object?>> data=await db.rawQuery('select * from user');
    User u=User();
    u.uid=-1;
    u.uname='selet name';
    u.ucityname='select city';
    userlist.add(u);
      for(int i=0;i<data.length;i++)
        {
           u=User();
          u.uid=data[i]['uid'] as int;
          u.uname=data[i]['uname'] as String;
          u.ucityname=data[i]['ucityname'] as String;
          userlist.add(u);
        }
      print("Userlist is::::${userlist.length}");
      return userlist;
  }
  Future<void> insertdata1({uname,ucityname,uid}) async {
    Database db = await initDatabase();
    Map<String, Object?> map = Map();
    map['uname'] = uname;
    map['ucityname'] = ucityname;
      print('${await db.insert('Tbl_User', map)}');
  }
}