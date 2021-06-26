import 'package:animelife/Modules/repositories/anime_recomendacao.dart';
import 'package:animelife/Modules/repositories/usuariomal.dart';
import 'package:animelife/Modules/singleton/singletonappdata.dart';
import 'package:dio/dio.dart';
import 'AnimeJson.dart';
import 'animecalendario.dart';
import 'animeseason.dart';

class AnimeRepository {
  final dio = Dio();

  Future<AnimeSeason>? fetchTopSeason() async {
    final response = await dio.get('https://api.jikan.moe/v3/season');
    return AnimeSeason.fromJson(response.data);
  }

  Future<Anime>? fetchPopulares() async {
    final response =
        await dio.get('https://api.jikan.moe/v3/top/anime/1/airing');
    return Anime.fromJson(response.data);
  }

  Future<AnimeCalendario>? fetchCalendario() async {
    final response = await dio.get('https://api.jikan.moe/v3/schedule');
    return AnimeCalendario.fromJson(response.data);
  }

  Future<Usuario>? fetchUsuario() async {
    final response = await dio
        .get('https://api.jikan.moe/v3/user/' + appData.nick + '/profile');
    return Usuario.fromJson(response.data);
  }

  Future<Recomendacao>? fetchRecomendacao() async {
    final response = await dio.get('https://api.jikan.moe/v3/anime/' +
        appData.maild.toString() +
        '/recommendations');
    return Recomendacao.fromJson(response.data);
  }
}
