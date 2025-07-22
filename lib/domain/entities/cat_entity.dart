class CatEntity {
  final String id;
  final String name;
  final String description;
  final String temperament;
  final String origin;
  final int? intelligence;
  final String? lifeSpan;
  final int? adaptability;
  final String? referenceImageId;
  final String? weight;
  final String? imageUrl;

  CatEntity({
    required this.id,
    required this.name,
    required this.description,
    required this.temperament,
    required this.origin,
    this.intelligence,
    this.lifeSpan,
    this.adaptability,
    this.referenceImageId,
    this.weight,
    this.imageUrl,
  });
}