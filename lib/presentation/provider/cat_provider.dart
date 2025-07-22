import 'package:flutter/material.dart';
import 'package:ludycom_test/domain/entities/cat_entity.dart';
import 'package:ludycom_test/domain/usecases/get_cats_usescases.dart';

class CatProvider extends ChangeNotifier {
  // Casos de uso
  final GetCatsUseCase _getCatsUseCase;

  // Estado
  List<CatEntity> _cats = [];
  CatEntity? _selectedCat;
  bool _isLoading = false;
  String? _error;

  // Getters
  List<CatEntity> get cats => _cats;
  CatEntity? get selectedCat => _selectedCat;
  bool get isLoading => _isLoading;
  String? get error => _error;

  CatProvider({required GetCatsUseCase getCatsUseCase})
      : _getCatsUseCase = getCatsUseCase;

  // Métodos

  Future<void> init() async {
    await loadCats();
    notifyListeners();
  }

  Future<void> loadCats() async {
    _isLoading = true;
    _error = null;
    try {
      _cats = await _getCatsUseCase.execute();
      _isLoading = false;
    } catch (e) {
      _error = e.toString();
      _isLoading = false;
    }
  }
}