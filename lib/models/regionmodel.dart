class RegionModel {
  String? query;
  List<Data>? data;

  RegionModel({this.query, this.data});

  RegionModel.fromJson(Map<String, dynamic> json) {
    if (json["query"] is String) {
      query = json["query"];
    }
    if (json["data"] is List) {
      data = json["data"] == null
          ? null
          : (json["data"] as List).map((e) => Data.fromJson(e)).toList();
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["query"] = query;
    if (data != null) {
      _data["data"] = data?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class Data {
  String? ktype;
  String? index;
  String? gaiaId;
  String? type;
  RegionNames? regionNames;
  EssId? essId;
  Coordinates? coordinates;
  HierarchyInfo? hierarchyInfo;

  Data(
      {this.ktype,
      this.index,
      this.gaiaId,
      this.type,
      this.regionNames,
      this.essId,
      this.coordinates,
      this.hierarchyInfo});

  Data.fromJson(Map<String, dynamic> json) {
    if (json["@type"] is String) {
      ktype = json["@type"];
    }
    if (json["index"] is String) {
      index = json["index"];
    }
    if (json["gaiaId"] is String) {
      gaiaId = json["gaiaId"];
    }
    if (json["type"] is String) {
      type = json["type"];
    }
    if (json["regionNames"] is Map) {
      regionNames = json["regionNames"] == null
          ? null
          : RegionNames.fromJson(json["regionNames"]);
    }
    if (json["essId"] is Map) {
      essId = json["essId"] == null ? null : EssId.fromJson(json["essId"]);
    }
    if (json["coordinates"] is Map) {
      coordinates = json["coordinates"] == null
          ? null
          : Coordinates.fromJson(json["coordinates"]);
    }
    if (json["hierarchyInfo"] is Map) {
      hierarchyInfo = json["hierarchyInfo"] == null
          ? null
          : HierarchyInfo.fromJson(json["hierarchyInfo"]);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["@type"] = ktype;
    _data["index"] = index;
    _data["gaiaId"] = gaiaId;
    _data["type"] = type;
    if (regionNames != null) {
      _data["regionNames"] = regionNames?.toJson();
    }
    if (essId != null) {
      _data["essId"] = essId?.toJson();
    }
    if (coordinates != null) {
      _data["coordinates"] = coordinates?.toJson();
    }
    if (hierarchyInfo != null) {
      _data["hierarchyInfo"] = hierarchyInfo?.toJson();
    }
    return _data;
  }
}

class HierarchyInfo {
  Country? country;

  HierarchyInfo({this.country});

  HierarchyInfo.fromJson(Map<String, dynamic> json) {
    if (json["country"] is Map) {
      country =
          json["country"] == null ? null : Country.fromJson(json["country"]);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (country != null) {
      _data["country"] = country?.toJson();
    }
    return _data;
  }
}

class Country {
  String? name;
  String? isoCode2;
  String? isoCode3;

  Country({this.name, this.isoCode2, this.isoCode3});

  Country.fromJson(Map<String, dynamic> json) {
    if (json["name"] is String) {
      name = json["name"];
    }
    if (json["isoCode2"] is String) {
      isoCode2 = json["isoCode2"];
    }
    if (json["isoCode3"] is String) {
      isoCode3 = json["isoCode3"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["isoCode2"] = isoCode2;
    _data["isoCode3"] = isoCode3;
    return _data;
  }
}

class Coordinates {
  String? lat;
  String? long;

  Coordinates({this.lat, this.long});

  Coordinates.fromJson(Map<String, dynamic> json) {
    if (json["lat"] is String) {
      lat = json["lat"];
    }
    if (json["long"] is String) {
      long = json["long"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["lat"] = lat;
    _data["long"] = long;
    return _data;
  }
}

class EssId {
  String? sourceName;
  String? sourceId;

  EssId({this.sourceName, this.sourceId});

  EssId.fromJson(Map<String, dynamic> json) {
    if (json["sourceName"] is String) {
      sourceName = json["sourceName"];
    }
    if (json["sourceId"] is String) {
      sourceId = json["sourceId"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["sourceName"] = sourceName;
    _data["sourceId"] = sourceId;
    return _data;
  }
}

class RegionNames {
  String? fullName;
  String? shortName;
  String? displayName;
  String? primaryDisplayName;
  String? secondaryDisplayName;
  String? lastSearchName;

  RegionNames(
      {this.fullName,
      this.shortName,
      this.displayName,
      this.primaryDisplayName,
      this.secondaryDisplayName,
      this.lastSearchName});

  RegionNames.fromJson(Map<String, dynamic> json) {
    if (json["fullName"] is String) {
      fullName = json["fullName"];
    }
    if (json["shortName"] is String) {
      shortName = json["shortName"];
    }
    if (json["displayName"] is String) {
      displayName = json["displayName"];
    }
    if (json["primaryDisplayName"] is String) {
      primaryDisplayName = json["primaryDisplayName"];
    }
    if (json["secondaryDisplayName"] is String) {
      secondaryDisplayName = json["secondaryDisplayName"];
    }
    if (json["lastSearchName"] is String) {
      lastSearchName = json["lastSearchName"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["fullName"] = fullName;
    _data["shortName"] = shortName;
    _data["displayName"] = displayName;
    _data["primaryDisplayName"] = primaryDisplayName;
    _data["secondaryDisplayName"] = secondaryDisplayName;
    _data["lastSearchName"] = lastSearchName;
    return _data;
  }
}
