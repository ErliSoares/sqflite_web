import 'dart:typed_data';

import 'package:sqflite_common/sqlite_api.dart';

import 'sqflite_web.dart';
import 'sqflite_web_impl.dart';

DatabaseFactory _databaseFactoryWebImpl;

/// The web database factory.
DatabaseFactory get databaseFactoryWebImpl {
  return _databaseFactoryWebImpl ??= DatabaseFactoryWeb();
}

/// The web database factory.
class DatabaseFactoryWeb extends DatabaseFactory {
  SqfliteWebDatabase _db;

  @override
  Future<bool> databaseExists(String path) async {
    //TODO
    return _db != null;
  }

  @override
  Future<void> deleteDatabase(String path) async {
    //TODO
    return _db = null;
  }

  @override
  Future<String> getDatabasesPath() async {
    //TODO
    return null;
  }

  @override
  Future<Database> openDatabase(String path,
      {OpenDatabaseOptions options}) async {
    await SqflitePluginWeb.isReady;
    return _db ??= SqfliteWebDatabase(
        path: path, readOnly: false, logLevel: sqfliteLogLevelNone);
  }

  Future<Database> openFromData(String path, Uint8List data,
      {OpenDatabaseOptions options}) async {
    await SqflitePluginWeb.isReady;
    return _db ??= SqfliteWebDatabase.fromData(
      data: data,
        path: path, readOnly: false, logLevel: sqfliteLogLevelNone);
  }
}
