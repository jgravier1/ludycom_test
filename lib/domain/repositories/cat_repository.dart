import 'package:ludycom_test/domain/entities/cat_entity.dart';

abstract class CatRepository {
  Future<List<CatEntity>> getCats();
}