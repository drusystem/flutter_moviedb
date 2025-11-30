import 'package:flutter_cinema_app/domain/entities/movie.dart';
import 'package:flutter_cinema_app/infrastructure/models/moviedb/movie_details.dart';
import 'package:flutter_cinema_app/infrastructure/models/moviedb/moviedb_data_response.dart';

class MovieMapper {
  static Movie movieDBToEntity(MoviedbDataResponse moviedb) => Movie(
    adult: moviedb.adult,
    backdropPath: moviedb.backdropPath != ''
        ? 'https://image.tmdb.org/t/p/w500${moviedb.backdropPath}'
        : 'https://png.pngtree.com/png-vector/20190820/ourmid/pngtree-no-image-vector-illustration-isolated-png-image_1694547.jpg',
    genreIds: moviedb.genreIds
        .map((toElement) => toElement.toString())
        .toList(),
    id: moviedb.id,
    originalLanguage: moviedb.originalLanguage,
    originalTitle: moviedb.originalTitle,
    overview: moviedb.overview,
    popularity: moviedb.popularity,
    posterPath: moviedb.posterPath != ''
        ? 'https://image.tmdb.org/t/p/w500${moviedb.posterPath}'
        : 'https://ih1.redbubble.net/image.1861339560.3228/fposter,x_small,wall_texture,product,750x1000.jpg',
    releaseDate: moviedb.releaseDate ?? DateTime.now(),
    title: moviedb.title,
    video: moviedb.video,
    voteAverage: moviedb.voteAverage,
    voteCount: moviedb.voteCount,
  );

  static Movie movieDetailsToEntity(MovieDetails moviedb) => Movie(
    adult: moviedb.adult,
    backdropPath: moviedb.backdropPath != ''
        ? 'https://image.tmdb.org/t/p/w500${moviedb.backdropPath}'
        : 'https://png.pngtree.com/png-vector/20190820/ourmid/pngtree-no-image-vector-illustration-isolated-png-image_1694547.jpg',
    genreIds: moviedb.genres
        .map((toElement) => toElement.name)
        .toList(),
    id: moviedb.id,
    originalLanguage: moviedb.originalLanguage,
    originalTitle: moviedb.originalTitle,
    overview: moviedb.overview,
    popularity: moviedb.popularity,
    posterPath: moviedb.posterPath != ''
        ? 'https://image.tmdb.org/t/p/w500${moviedb.posterPath}'
        : 'https://png.pngtree.com/png-vector/20190820/ourmid/pngtree-no-image-vector-illustration-isolated-png-image_1694547.jpg',
    releaseDate: moviedb.releaseDate,
    title: moviedb.title,
    video: moviedb.video,
    voteAverage: moviedb.voteAverage,
    voteCount: moviedb.voteCount,
  );
}
