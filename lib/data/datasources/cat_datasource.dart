
import 'package:ludycom_test/data/models/cat_response_model.dart';

abstract interface class CatDatasource {
  Future<List<CatResponseModel>> getCats();
  Future<String?> getCatImageUrl(String imageId);
}