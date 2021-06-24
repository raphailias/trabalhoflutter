class Anime {
  String? requestHash;
  bool? requestCached;
  int? requestCacheExpiry;
  List<Top>? top;

  Anime(
      {required this.requestHash,
      required this.requestCached,
      required this.requestCacheExpiry,
      required this.top});

  Anime.fromJson(Map<String, dynamic> json) {
    requestHash = json['request_hash'];
    requestCached = json['request_cached'];
    requestCacheExpiry = json['request_cache_expiry'];
    if (json['top'] != null) {
      top = <Top>[];
      json['top'].forEach((v) {
        top!.add(new Top.fromJson(v));
      });
    }
  }
}

class Top {
  int? malId;
  String? title;
  String? imageUrl;
  int? episodes;
  String? startDate;
  double? score;

  Top(
      {required this.malId,
      required this.title,
      required this.imageUrl,
      required this.episodes,
      required this.startDate,
      required this.score});

  Top.fromJson(Map<String, dynamic> json) {
    malId = json['mal_id'];
    title = json['title'];
    imageUrl = json['image_url'];
    episodes = json['episodes'];
    startDate = json['start_date'];
    score = json['score'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['mal_id'] = this.malId;
    data['title'] = this.title;
    data['image_url'] = this.imageUrl;
    data['episodes'] = this.episodes;
    data['start_date'] = this.startDate;
    data['score'] = this.score;
    return data;
  }
}
