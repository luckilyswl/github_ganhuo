import 'package:github_client_app/resources/github_db.dart';

class Repository{
  final db = GithubDB();

  Future<int> insert(String table,dynamic item) async{
    return db.insert(table, item);
  }

  Future<List> getALl(String table) async{
    return db.getAll(table);
  }

  Future<int> update(String table, dynamic item) async{
    return db.update(table, item);
  }

  Future<int> delete(String table, dynamic item) async {
    return db.delete(table, item);
  }

}