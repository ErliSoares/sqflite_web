import 'package:sqflite_common/sqlite_api.dart';
import 'package:sqflite_web/src/database_factory.dart';

/// The database factory to use for web.
///
/// Check support documentation.
///
/// Currently supports only Web => This stub will throw an error
DatabaseFactory get databaseFactoryWeb => throw UnimplementedError(
    'databaseFactoryWeb only supported for Web application');

DatabaseFactoryWeb get databaseFactoryWebCustom => throw UnimplementedError(
    'databaseFactoryWeb only supported for Web application');

/// Optional. Initialize web loader.
///
/// Call in main until you find a loader for your needs => This stub will throw an error
void sqfliteWebInit() => throw UnimplementedError(
    'sqfliteWebInit only supported for Web application');
