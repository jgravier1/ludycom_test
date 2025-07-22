import 'package:flutter/material.dart';
import 'package:ludycom_test/domain/entities/cat_entity.dart';
import 'package:ludycom_test/domain/usecases/get_cats_usescases.dart';

class CatProvider extends ChangeNotifier {
  final GetCatsUseCase _getCatsUseCase;

  List<CatEntity> _cats = [];
  CatEntity? _selectedCat;
  bool _isLoading = false;
  String? _error;
  String _searchQuery = '';

  List<CatEntity> get cats => _cats;
  CatEntity? get selectedCat => _selectedCat;
  bool get isLoading => _isLoading;
  String? get error => _error;
  String get searchQuery => _searchQuery;

  List<CatEntity> get filteredCats {
    if (_searchQuery.isEmpty) {
      return _cats;
    }
    return _cats
        .where(
          (cat) => cat.name.toLowerCase().contains(_searchQuery.toLowerCase()),
        )
        .toList();
  }

  CatProvider({required GetCatsUseCase getCatsUseCase})
    : _getCatsUseCase = getCatsUseCase;

  get searchController => TextEditingController(text: _searchQuery);

  Future<void> init() async {
    await loadCats();
  }

  Future<void> loadCats() async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      _cats = await _getCatsUseCase.execute();
      _isLoading = false;
      notifyListeners();
    } catch (e) {
      _error = e.toString();
      _isLoading = false;
      notifyListeners();
    }
  }

  void updateSearchQuery(String query) {
    _searchQuery = query;
    notifyListeners();
  }

  void clearSearch() {
    _searchQuery = '';
    searchController.clear();
    notifyListeners();
  }
}
