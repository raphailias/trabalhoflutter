import 'package:animelife/Modules/repositories/anime_repository.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  final repository = AnimeRepository();
  test('deve trazer uma lista de Animes', () async {
    final list = await repository.fetchTopSeason();
    final list2 = await repository.fetchPopulares();
    print(list);
    print(list2);
  });
}
