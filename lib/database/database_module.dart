import 'package:injectable/injectable.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

@module
abstract class DatabaseModule {
  @preResolve
  Future<Database> get database async {
    final documentsDirectory = await getApplicationDocumentsDirectory();
    final path = join(documentsDirectory.path, "ReactiveTodo_v2.db");
    
    return openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute(
          "CREATE TABLE todos ("
          "id INTEGER PRIMARY KEY AUTOINCREMENT, "
          "description TEXT, "
          "is_done INTEGER "
          ")"
        );
      },
    );
  }
}
