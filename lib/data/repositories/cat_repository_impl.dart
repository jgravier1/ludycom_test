import 'package:ludycom_test/data/datasources/cat_datasource.dart';
import 'package:ludycom_test/domain/entities/cat_entity.dart';
import 'package:ludycom_test/domain/repositories/cat_repository.dart';

class CatRepositoryImpl implements CatRepository {
  final CatDatasource catDatasource;

  CatRepositoryImpl({required this.catDatasource});

  @override
  Future<List<CatEntity>> getCats() async {
    try {
      final catsModel = await catDatasource.getCats();
      final List<CatEntity> catsWithImages = [];
      for (final catModel in catsModel) {
        String? imageUrl;
        if (catModel.referenceImageId.isNotEmpty) {
          imageUrl = await catDatasource.getCatImageUrl(
            catModel.referenceImageId,
          );
        }
        final catEntity = CatEntity(
          id: catModel.id,
          name: catModel.name,
          description: catModel.description,
          referenceImageId: catModel.referenceImageId,
          weight: catModel.weight.metric,
          temperament: catModel.temperament,
          origin: catModel.origin,
          intelligence: catModel.intelligence,
          lifeSpan: catModel.lifeSpan,
          adaptability: catModel.adaptability,
          imageUrl: imageUrl,
        );
        catsWithImages.add(catEntity);
      }
      return catsWithImages;
    } catch (e) {
      rethrow;
    }
  }
}
