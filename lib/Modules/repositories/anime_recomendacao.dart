class Recomendacao {
  String? requestHash;
  bool? requestCached;
  int? requestCacheExpiry;
  List<Recommendations>? recommendations;

  Recomendacao(
      {required this.requestHash,
      required this.requestCached,
      required this.requestCacheExpiry,
      required this.recommendations});

  Recomendacao.fromJson(Map<String, dynamic> json) {
    requestHash = json['request_hash'];
    requestCached = json['request_cached'];
    requestCacheExpiry = json['request_cache_expiry'];
    if (json['recommendations'] != null) {
      recommendations = <Recommendations>[];
      json['recommendations'].forEach((v) {
        recommendations!.add(new Recommendations.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['request_hash'] = this.requestHash;
    data['request_cached'] = this.requestCached;
    data['request_cache_expiry'] = this.requestCacheExpiry;
    if (this.recommendations != null) {
      data['recommendations'] =
          this.recommendations!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Recommendations {
  int? malId;
  String? url;
  String? imageUrl;
  String? recommendationUrl;
  String? title;
  int? recommendationCount;

  Recommendations(
      {this.malId,
      this.url,
      this.imageUrl,
      this.recommendationUrl,
      this.title,
      this.recommendationCount});

  Recommendations.fromJson(Map<String, dynamic> json) {
    malId = json['mal_id'];
    url = json['url'];
    imageUrl = json['image_url'];
    recommendationUrl = json['recommendation_url'];
    title = json['title'];
    recommendationCount = json['recommendation_count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['mal_id'] = this.malId;
    data['url'] = this.url;
    data['image_url'] = this.imageUrl;
    data['recommendation_url'] = this.recommendationUrl;
    data['title'] = this.title;
    data['recommendation_count'] = this.recommendationCount;
    return data;
  }
}
