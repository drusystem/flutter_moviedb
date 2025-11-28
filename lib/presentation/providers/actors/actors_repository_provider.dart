import 'package:flutter_cinema_app/infrastructure/datasources/actor_moviedb_datasource.dart';
import 'package:flutter_cinema_app/infrastructure/repositories/actor_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


//provider de solo lectura (inmutable)
final actorsRepositoryPriver = Provider((ref) {
  return ActorRepositoryImpl(ActorMoviedbDatasource());
});
