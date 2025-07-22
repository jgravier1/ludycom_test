import 'dart:convert';

List<CatResponseModel> catModelFromJson(String str) => List<CatResponseModel>.from(json.decode(str).map((x) => CatResponseModel.fromJson(x)));

String catModelToJson(List<CatResponseModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CatResponseModel {
  final Weight weight;
  final String id;
  final String name;
  final String cfaUrl;
  final String vetstreetUrl;
  final String vcahospitalsUrl;
  final String temperament;
  final String origin;
  final String countryCodes;
  final String countryCode;
  final String description;
  final String lifeSpan;
  final int indoor;
  final int lap;
  final String altNames;
  final int adaptability;
  final int affectionLevel;
  final int childFriendly;
  final int dogFriendly;
  final int energyLevel;
  final int grooming;
  final int healthIssues;
  final int intelligence;
  final int sheddingLevel;
  final int socialNeeds;
  final int strangerFriendly;
  final int vocalisation;
  final int experimental;
  final int hairless;
  final int natural;
  final int rare;
  final int rex;
  final int suppressedTail;
  final int shortLegs;
  final String wikipediaUrl;
  final int hypoallergenic;
  final String referenceImageId;
  final int catFriendly;
  final int bidability;

  CatResponseModel({
    required this.weight,
    required this.id,
    required this.name,
    required this.cfaUrl,
    required this.vetstreetUrl,
    required this.vcahospitalsUrl,
    required this.temperament,
    required this.origin,
    required this.countryCodes,
    required this.countryCode,
    required this.description,
    required this.lifeSpan,
    required this.indoor,
    required this.lap,
    required this.altNames,
    required this.adaptability,
    required this.affectionLevel,
    required this.childFriendly,
    required this.dogFriendly,
    required this.energyLevel,
    required this.grooming,
    required this.healthIssues,
    required this.intelligence,
    required this.sheddingLevel,
    required this.socialNeeds,
    required this.strangerFriendly,
    required this.vocalisation,
    required this.experimental,
    required this.hairless,
    required this.natural,
    required this.rare,
    required this.rex,
    required this.suppressedTail,
    required this.shortLegs,
    required this.wikipediaUrl,
    required this.hypoallergenic,
    required this.referenceImageId,
    required this.catFriendly,
    required this.bidability,
  });

  factory CatResponseModel.fromJson(Map<String, dynamic> json) => CatResponseModel(
    weight: json["weight"] != null ? Weight.fromJson(json["weight"]) : Weight(imperial: "N/A", metric: "N/A"),
    id: json["id"] ?? "",
    name: json["name"] ?? "Unknown",
    cfaUrl: json["cfa_url"] ?? "",
    vetstreetUrl: json["vetstreet_url"] ?? "",
    vcahospitalsUrl: json["vcahospitals_url"] ?? "",
    temperament: json["temperament"] ?? "",
    origin: json["origin"] ?? "",
    countryCodes: json["country_codes"] ?? "",
    countryCode: json["country_code"] ?? "",
    description: json["description"] ?? "",
    lifeSpan: json["life_span"] ?? "",
    indoor: json["indoor"] ?? 0,
    lap: json["lap"] ?? 0,
    altNames: json["alt_names"] ?? "",
    adaptability: json["adaptability"] ?? 0,
    affectionLevel: json["affection_level"] ?? 0,
    childFriendly: json["child_friendly"] ?? 0,
    dogFriendly: json["dog_friendly"] ?? 0,
    energyLevel: json["energy_level"] ?? 0,
    grooming: json["grooming"] ?? 0,
    healthIssues: json["health_issues"] ?? 0,
    intelligence: json["intelligence"] ?? 0,
    sheddingLevel: json["shedding_level"] ?? 0,
    socialNeeds: json["social_needs"] ?? 0,
    strangerFriendly: json["stranger_friendly"] ?? 0,
    vocalisation: json["vocalisation"] ?? 0,
    experimental: json["experimental"] ?? 0,
    hairless: json["hairless"] ?? 0,
    natural: json["natural"] ?? 0,
    rare: json["rare"] ?? 0,
    rex: json["rex"] ?? 0,
    suppressedTail: json["suppressed_tail"] ?? 0,
    shortLegs: json["short_legs"] ?? 0,
    wikipediaUrl: json["wikipedia_url"] ?? "",
    hypoallergenic: json["hypoallergenic"] ?? 0,
    referenceImageId: json["reference_image_id"] ?? "",
    catFriendly: json["cat_friendly"] ?? 0,
    bidability: json["bidability"] ?? 0,
  );

  Map<String, dynamic> toJson() => {
    "weight": weight.toJson(),
    "id": id,
    "name": name,
    "cfa_url": cfaUrl,
    "vetstreet_url": vetstreetUrl,
    "vcahospitals_url": vcahospitalsUrl,
    "temperament": temperament,
    "origin": origin,
    "country_codes": countryCodes,
    "country_code": countryCode,
    "description": description,
    "life_span": lifeSpan,
    "indoor": indoor,
    "lap": lap,
    "alt_names": altNames,
    "adaptability": adaptability,
    "affection_level": affectionLevel,
    "child_friendly": childFriendly,
    "dog_friendly": dogFriendly,
    "energy_level": energyLevel,
    "grooming": grooming,
    "health_issues": healthIssues,
    "intelligence": intelligence,
    "shedding_level": sheddingLevel,
    "social_needs": socialNeeds,
    "stranger_friendly": strangerFriendly,
    "vocalisation": vocalisation,
    "experimental": experimental,
    "hairless": hairless,
    "natural": natural,
    "rare": rare,
    "rex": rex,
    "suppressed_tail": suppressedTail,
    "short_legs": shortLegs,
    "wikipedia_url": wikipediaUrl,
    "hypoallergenic": hypoallergenic,
    "reference_image_id": referenceImageId,
    "cat_friendly": catFriendly,
    "bidability": bidability,
  };
}

class Weight {
  final String imperial;
  final String metric;

  Weight({
    required this.imperial,
    required this.metric,
  });

  factory Weight.fromJson(Map<String, dynamic> json) => Weight(
    imperial: json["imperial"] ?? "N/A",
    metric: json["metric"] ?? "N/A",
  );

  Map<String, dynamic> toJson() => {
    "imperial": imperial,
    "metric": metric,
  };
}