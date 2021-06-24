class AnimeSeason {
  String? requestHash;
  bool? requestCached;
  int? requestCacheExpiry;
  String? seasonName;
  int? seasonYear;
  List<AnimeS>? anime;

  AnimeSeason(
      {required this.requestHash,
      required this.requestCached,
      required this.requestCacheExpiry,
      required this.seasonName,
      required this.seasonYear,
      required this.anime});

  AnimeSeason.fromJson(Map<String, dynamic> json) {
    requestHash = json['request_hash'];
    requestCached = json['request_cached'];
    requestCacheExpiry = json['request_cache_expiry'];
    seasonName = json['season_name'];
    seasonYear = json['season_year'];
    if (json['anime'] != null) {
      anime = <AnimeS>[];
      json['anime'].forEach((v) {
        anime!.add(new AnimeS.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['request_hash'] = this.requestHash;
    data['request_cached'] = this.requestCached;
    data['request_cache_expiry'] = this.requestCacheExpiry;
    data['season_name'] = this.seasonName;
    data['season_year'] = this.seasonYear;
    if (this.anime != null) {
      data['anime'] = this.anime!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class AnimeS {
  int? malId;
  String? title;
  String? imageUrl;
  String? synopsis;
  String? airingStart;
  int? episodes;
  int? members;
  double? score;

  AnimeS({
    required this.malId,
    this.title,
    this.imageUrl,
    this.synopsis,
    this.airingStart,
    this.episodes,
    this.members,
    this.score,
  });

  AnimeS.fromJson(Map<String, dynamic> json) {
    malId = json['mal_id'];
    title = json['title'];
    imageUrl = json['image_url'];
    synopsis = json['synopsis'];
    airingStart = json['airing_start'];
    episodes = json['episodes'];
    members = json['members'];
    score = json['score'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['mal_id'] = this.malId;
    data['title'] = this.title;
    data['image_url'] = this.imageUrl;
    data['synopsis'] = this.synopsis;
    data['airing_start'] = this.airingStart;
    data['episodes'] = this.episodes;
    data['members'] = this.members;
    data['score'] = this.score;
    return data;
  }
}
