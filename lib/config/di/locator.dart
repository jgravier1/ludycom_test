import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:ludycom_test/data/datasources/cat_datasource.dart';
import 'package:ludycom_test/data/datasources/cat_datasource_impl.dart';
import 'package:ludycom_test/data/repositories/cat_repository_impl.dart';
import 'package:ludycom_test/domain/repositories/cat_repository.dart';
import 'package:ludycom_test/domain/usecases/get_cats_by_id_usescases.dart';
import 'package:ludycom_test/domain/usecases/get_cats_usescases.dart';

final GetIt locator = GetIt.instance;

void setupLocator() {
  // Datasources
  locator.registerLazySingleton<CatDatasource>(() => CatDatasourceImpl(dio: Dio()));

  // Repositories
  locator.registerLazySingleton<CatRepository>(
    () => CatRepositoryImpl(catDatasource: locator<CatDatasource>()),
  );

  // Use cases
  locator.registerLazySingleton<GetCatsUseCase>(
    () => GetCatsUseCase(locator<CatRepository>()),
  );

  locator.registerLazySingleton<GetCatByIdUseCase>(
    () => GetCatByIdUseCase(locator<CatRepository>()),
  );

}