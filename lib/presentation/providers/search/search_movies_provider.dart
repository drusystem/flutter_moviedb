import 'package:flutter_cinema_app/domain/entities/movie.dart';
import 'package:flutter_cinema_app/presentation/providers/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

//provider basico
final searchQueryProvider = StateProvider<String>((ref) => '');

//provider con notifier
final searchedMoviesProvider =
    StateNotifierProvider<SearchMoviesNotifier, List<Movie>>((ref) {
      final movieRepository = ref.read(movieRepositoryPriver);

      return SearchMoviesNotifier(searchMovies: movieRepository.searchMovies, ref: ref);
    });



//definicion del notifier a usar en el provider
typedef SearchMoviesCallback = Future<List<Movie>> Function(String query);

class SearchMoviesNotifier extends StateNotifier<List<Movie>> {
  final SearchMoviesCallback searchMovies;
  final Ref ref;

  SearchMoviesNotifier({required this.searchMovies, required this.ref})
    : super([]);

  Future<List<Movie>> searchMoviesByQuery(String query) async {
    final List<Movie> movies = await searchMovies(query);
    ref.read(searchQueryProvider.notifier).update((state) => query);
    state = movies;
    return movies;
  }
}
