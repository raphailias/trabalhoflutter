class AnimeCalendario {
  String? requestHash;
  bool? requestCached;
  int? requestCacheExpiry;
  List<Monday>? monday;
  List<Tuesday>? tuesday;
  List<Wednesday>? wednesday;
  List<Thursday>? thursday;
  List<Friday>? friday;
  List<Saturday>? saturday;
  List<Sunday>? sunday;

  AnimeCalendario({
    required this.requestHash,
    required this.requestCached,
    required this.requestCacheExpiry,
    required this.monday,
    required this.tuesday,
    required this.wednesday,
    required this.thursday,
    required this.friday,
    required this.saturday,
    required this.sunday,
  });

  AnimeCalendario.fromJson(Map<String, dynamic> json) {
    requestHash = json['request_hash'];
    requestCached = json['request_cached'];
    requestCacheExpiry = json['request_cache_expiry'];
    if (json['monday'] != null) {
      monday = <Monday>[];
      json['monday'].forEach((v) {
        monday!.add(new Monday.fromJson(v));
      });
    }
    if (json['tuesday'] != null) {
      tuesday = <Tuesday>[];
      json['tuesday'].forEach((v) {
        tuesday!.add(new Tuesday.fromJson(v));
      });
    }
    if (json['wednesday'] != null) {
      wednesday = <Wednesday>[];
      json['wednesday'].forEach((v) {
        wednesday!.add(new Wednesday.fromJson(v));
      });
    }
    if (json['thursday'] != null) {
      thursday = <Thursday>[];
      json['thursday'].forEach((v) {
        thursday!.add(new Thursday.fromJson(v));
      });
    }
    if (json['friday'] != null) {
      friday = <Friday>[];
      json['friday'].forEach((v) {
        friday!.add(new Friday.fromJson(v));
      });
    }
    if (json['saturday'] != null) {
      saturday = <Saturday>[];
      json['saturday'].forEach((v) {
        saturday!.add(new Saturday.fromJson(v));
      });
    }
    if (json['sunday'] != null) {
      sunday = <Sunday>[];
      json['sunday'].forEach((v) {
        sunday!.add(new Sunday.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['request_hash'] = this.requestHash;
    data['request_cached'] = this.requestCached;
    data['request_cache_expiry'] = this.requestCacheExpiry;
    if (this.monday != null) {
      data['monday'] = this.monday!.map((v) => v.toJson()).toList();
    }
    if (this.tuesday != null) {
      data['tuesday'] = this.tuesday!.map((v) => v.toJson()).toList();
    }
    if (this.wednesday != null) {
      data['wednesday'] = this.wednesday!.map((v) => v.toJson()).toList();
    }
    if (this.thursday != null) {
      data['thursday'] = this.thursday!.map((v) => v.toJson()).toList();
    }
    if (this.friday != null) {
      data['friday'] = this.friday!.map((v) => v.toJson()).toList();
    }
    if (this.saturday != null) {
      data['saturday'] = this.saturday!.map((v) => v.toJson()).toList();
    }
    if (this.sunday != null) {
      data['sunday'] = this.sunday!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Monday {
  int? malId;
  String? url;
  String? title;
  String? imageUrl;
  String? synopsis;
  String? type;
  String? airingStart;
  int? episodes;
  int? members;
  double? score;

  Monday({
    required this.malId,
    required this.url,
    required this.title,
    required this.imageUrl,
    required this.synopsis,
    required this.airingStart,
    required this.episodes,
    required this.members,
    required this.score,
  });

  Monday.fromJson(Map<String, dynamic> json) {
    malId = json['mal_id'];
    url = json['url'];
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
    data['url'] = this.url;
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

class Tuesday {
  int? malId;
  String? url;
  String? title;
  String? imageUrl;
  String? synopsis;
  String? type;
  String? airingStart;
  int? episodes;
  int? members;
  double? score;

  Tuesday({
    required this.malId,
    required this.url,
    required this.title,
    required this.imageUrl,
    required this.synopsis,
    required this.airingStart,
    required this.episodes,
    required this.members,
    required this.score,
  });

  Tuesday.fromJson(Map<String, dynamic> json) {
    malId = json['mal_id'];
    url = json['url'];
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
    data['url'] = this.url;
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

class Wednesday {
  int? malId;
  String? url;
  String? title;
  String? imageUrl;
  String? synopsis;
  String? type;
  String? airingStart;
  int? episodes;
  int? members;
  double? score;

  Wednesday({
    required this.malId,
    required this.url,
    required this.title,
    required this.imageUrl,
    required this.synopsis,
    required this.airingStart,
    required this.episodes,
    required this.members,
    required this.score,
  });

  Wednesday.fromJson(Map<String, dynamic> json) {
    malId = json['mal_id'];
    url = json['url'];
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
    data['url'] = this.url;
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

class Thursday {
  int? malId;
  String? url;
  String? title;
  String? imageUrl;
  String? synopsis;
  String? type;
  String? airingStart;
  int? episodes;
  int? members;
  double? score;

  Thursday({
    required this.malId,
    required this.url,
    required this.title,
    required this.imageUrl,
    required this.synopsis,
    required this.airingStart,
    required this.episodes,
    required this.members,
    required this.score,
  });

  Thursday.fromJson(Map<String, dynamic> json) {
    malId = json['mal_id'];
    url = json['url'];
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
    data['url'] = this.url;
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

class Friday {
  int? malId;
  String? url;
  String? title;
  String? imageUrl;
  String? synopsis;
  String? type;
  String? airingStart;
  int? episodes;
  int? members;
  double? score;

  Friday({
    required this.malId,
    required this.url,
    required this.title,
    required this.imageUrl,
    required this.synopsis,
    required this.airingStart,
    required this.episodes,
    required this.members,
    required this.score,
  });

  Friday.fromJson(Map<String, dynamic> json) {
    malId = json['mal_id'];
    url = json['url'];
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
    data['url'] = this.url;
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

class Saturday {
  int? malId;
  String? url;
  String? title;
  String? imageUrl;
  String? synopsis;
  String? type;
  String? airingStart;
  int? episodes;
  int? members;
  double? score;

  Saturday({
    required this.malId,
    required this.url,
    required this.title,
    required this.imageUrl,
    required this.synopsis,
    required this.airingStart,
    required this.episodes,
    required this.members,
    required this.score,
  });

  Saturday.fromJson(Map<String, dynamic> json) {
    malId = json['mal_id'];
    url = json['url'];
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
    data['url'] = this.url;
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

class Sunday {
  int? malId;
  String? url;
  String? title;
  String? imageUrl;
  String? synopsis;
  String? type;
  String? airingStart;
  int? episodes;
  int? members;
  double? score;

  Sunday({
    required this.malId,
    required this.url,
    required this.title,
    required this.imageUrl,
    required this.synopsis,
    required this.airingStart,
    required this.episodes,
    required this.members,
    required this.score,
  });

  Sunday.fromJson(Map<String, dynamic> json) {
    malId = json['mal_id'];
    url = json['url'];
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
    data['url'] = this.url;
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
