import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

final dbServices = SqfServices();

class SqfServices {
  final String dbname = 'user.db';
  static Database? _db;
  Future<void> initdb() async {
    _db = await openDatabase(
      join(await getDatabasesPath(), dbname),
      version: 1,
      onCreate: (db, version) {
        return db.execute('CREATE TABLE user(username TEXT,password TEXT)');
      },
    );
  }

  Future<bool> register(
      {required String username, required String password}) async {
    await _db!.insert('user', {'username': username, 'password': password},
        conflictAlgorithm: ConflictAlgorithm.replace);
    return true;
  }

  Future<bool> login(
      {required String username, required String password}) async {
    final userList = await _db!.rawQuery(
        "SELECT * FROM  user WHERE username='$username' and password='$password' ");

    if (userList.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }
}
