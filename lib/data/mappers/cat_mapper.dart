import 'package:ludycom_test/data/models/cat_response_model.dart';
import 'package:ludycom_test/domain/entities/cat_entity.dart';
CatEntity catResponseModelToCatEntity(CatResponseModel catResponseModel) {
  return CatEntity(
    id: catResponseModel.id,
    name: catResponseModel.name,
    description: catResponseModel.description,
    referenceImageId: catResponseModel.referenceImageId,
    weight: catResponseModel.weight.metric,
    temperament: catResponseModel.temperament,
    origin: catResponseModel.origin,
    intelligence: catResponseModel.intelligence,
    lifeSpan: catResponseModel.lifeSpan,
    adaptability: catResponseModel.adaptability,
  );
}