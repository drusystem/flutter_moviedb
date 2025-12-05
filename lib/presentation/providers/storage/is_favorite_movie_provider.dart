import 'package:flutter_cinema_app/presentation/providers/storage/local_storage_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final isFavoriteMovieProvier = FutureProvider.family<bool, int>((ref, movieId) {
  final localStorageRepository = ref.watch(localStorageRepositoryProvider);

  return localStorageRepository.isFavoriteMovie(movieId);
});
