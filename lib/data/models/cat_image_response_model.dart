class CatImageResponseModel {
  final String id;
  final String url;

  CatImageResponseModel({
    required this.id,
    required this.url,
  });

  factory CatImageResponseModel.fromJson(Map<String, dynamic> json) {
    return CatImageResponseModel(
      id: json['id'] ?? '',
      url: json['url'] ?? '',
    );
  }
}