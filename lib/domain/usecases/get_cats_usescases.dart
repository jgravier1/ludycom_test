import 'package:ludycom_test/domain/entities/cat_entity.dart';
import 'package:ludycom_test/domain/repositories/cat_repository.dart';

class GetCatsUseCase {
  final CatRepository repository;

  GetCatsUseCase(this.repository);

  Future<List<CatEntity>> execute() {
    return repository.getCats();
  }
}