import 'dart:io';
import 'package:first/model/city_model.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import '../model/Tbl_User.dart';

class MyDatabase {
  Future<Database> initDatabase() async {
    Directory appDocDir = await getApplicationDocumentsDirectory();
    String databasePath = join(appDocDir.path, 'matro.db');
    return await openDatabase(
      databasePath,
      version: 2,
    );
  }

  Future<bool> copyPasteAssetFileToRoot() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, 'matro.db');
    if (FileSystemEntity.typeSync(path) == FileSystemEntityType.notFound) {
      ByteData data =
          await rootBundle.load(join('assets/database/', 'matro.db'));
      List<int> bytes =
          data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
      await new File(path).writeAsBytes(bytes);
      return true;
    }
    return false;
  }

  Future<List<Map<String, Object?>>> getdatafromdatabase() async {
    Database db = await initDatabase();
    List<Map<String, Object?>> data = await db.rawQuery(
        'select mst_city.CityName,Tbl_User.UName from Tbl_User Inner Join mst_city on mst_city.CityId=Tbl_User.UId;');
    // print('User List ${data.length}');
    return data;
  }

  Future<List<Citymodel>> getdatafromcitymodel() async {
    List<Citymodel> citylist = [];
    Database db = await initDatabase();
    List<Map<String, Object?>> data =
        await db.rawQuery('select * from mst_city');
    Citymodel model = Citymodel();
    model.CityId = -1;
    model.CityName = 'Select City';
    model.StateId = -1;
    citylist.add(model);
    for (int i = 0; i < data.length; i++) {
      model = Citymodel();
      model.CityId = data[i]['CityId'] as int;
      model.CityName = data[i]['CityName'] as String;
      model.StateId = data[i]['StateId'] as int;
      citylist.add(model);
    }
    // print(citylist.length);
    return citylist;
  }
  Future<List<Usermodel>> getdatafromusermodel() async {
    List<Usermodel> userlist = [];
    Database db = await initDatabase();
    List<Map<String, Object?>> data =
        await db.rawQuery('select * from Tbl_User');
    for (int i = 0; i < data.length; i++) {
      Usermodel model = Usermodel();
      model.Uid = data[i]['UId'] as int;
      model.UName = data[i]['UName'] as String;
      model.DOB = data[i]['DOB'].toString() as String;
      model.CityId=data[i]['CityId']as int;
      model.favourite = false;
      userlist.add(model);
      print(userlist);
    }
    // print(userlist);
    return userlist;
  }
  Future<void> delete(Uid) async {
    Database db = await initDatabase();
    int id = await db.delete('Tbl_User', where: 'Uid=?', whereArgs: [Uid]);
    // print('id is ::::$id');
  }
  Future<void> insertdata({uname, Dob, Cityid, Uid}) async {
    Database db = await initDatabase();
    Map<String, Object?> map = Map();
    map['UName'] = uname;
    map['DOB'] = Dob;
    map['CityId'] = Cityid;
    if (Uid != -1) {
      //map['UId']=Uid;
      await db.update(
        'Tbl_User',
        map,
        where: 'Uid=?',
        whereArgs: [Uid],
      );
    } else {
      await db.insert('Tbl_User', map);
    }
    // print('${await db.insert('Tbl_User', map)}');
  }
// Future<String> get _localPath async {
//   final directory = await getApplicationDocumentsDirectory();
//   return directory.path;
// }

}
