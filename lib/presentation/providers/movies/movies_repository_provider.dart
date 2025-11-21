import 'package:flutter_cinema_app/infrastructure/datasources/moviedb_datasource.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_cinema_app/infrastructure/repositories/movie_repository_impl.dart';


//provider de solo lectura (inmutable)
final movieRepositoryPriver = Provider((ref) {
  return MovieRepositoryImpl(MoviedbDatasource());
});
