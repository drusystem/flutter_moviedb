import 'package:flutter_cinema_app/infrastructure/datasources/drift_datasource.dart';
import 'package:flutter_cinema_app/infrastructure/repositories/local_storage_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final localStorageRepositoryProvider = Provider((ref) {
  return LocalStorageRepositoryImpl(datasource: DriftDatasource());
});
