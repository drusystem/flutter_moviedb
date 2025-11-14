import 'package:flutter_cinema_app/domain/entities/movie.dart';

abstract class MoviesDatasources {
  
  Future<List<Movie>> getNowPlaying({int page=1});


}
