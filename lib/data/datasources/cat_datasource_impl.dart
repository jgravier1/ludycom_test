import 'package:ludycom_test/data/datasources/cat_datasource.dart';
import 'package:ludycom_test/data/models/cat_image_response_model.dart';
import 'package:ludycom_test/data/models/cat_response_model.dart';
import 'package:dio/dio.dart';

class CatDatasourceImpl implements CatDatasource {
  final Dio dio;
  static const String baseUrl = 'https://api.thecatapi.com/v1';

  CatDatasourceImpl({required this.dio});
  @override
  Future<List<CatResponseModel>> getCats() async {
    return dio
        .get<List<dynamic>>('$baseUrl/breeds')
        .then((response) {
          if (response.statusCode == 200) {
            return response.data!
                .map((cat) => CatResponseModel.fromJson(cat))
                .toList();
          } else {
            throw Exception(
              'Error al obtener los gatos: ${response.statusCode}',
            );
          }
        })
        .catchError((error) {
          throw error;
        });
  }

  @override
  Future<String?> getCatImageUrl(String imageId) async {
    try {
      final response = await dio.get('$baseUrl/images/$imageId');
      if (response.statusCode == 200) {
        final imageData = CatImageResponseModel.fromJson(response.data);
        return imageData.url;
      }
      return null;
    } on DioException catch (e) {
      return null;
    } catch (e) {
      return null;
    }
  }
}
