class Usuario {
  String? requestHash;
  bool? requestCached;
  int? requestCacheExpiry;
  int? userId;
  String? username;
  String? imageUrl;

  Usuario({
    required this.requestHash,
    required this.requestCached,
    required this.requestCacheExpiry,
    required this.userId,
    required this.username,
    required this.imageUrl,
  });

  Usuario.fromJson(Map<String, dynamic> json) {
    requestHash = json['request_hash'];
    requestCached = json['request_cached'];
    requestCacheExpiry = json['request_cache_expiry'];
    userId = json['user_id'];
    username = json['username'];
    imageUrl = json['image_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['request_hash'] = this.requestHash;
    data['request_cached'] = this.requestCached;
    data['request_cache_expiry'] = this.requestCacheExpiry;
    data['user_id'] = this.userId;
    data['username'] = this.username;
    data['image_url'] = this.imageUrl;
    return data;
  }
}
