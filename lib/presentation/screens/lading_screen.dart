
import 'package:flutter/material.dart';
import 'package:ludycom_test/config/di/locator.dart';
import 'package:ludycom_test/domain/usecases/get_cats_usescases.dart';
import 'package:ludycom_test/presentation/provider/cat_provider.dart';
import 'package:ludycom_test/presentation/views/lading_view.dart';
import 'package:provider/provider.dart';

class LadingScreen extends StatelessWidget {
  const LadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CatProvider(
        getCatsUseCase: locator<GetCatsUseCase>(),
      )..init(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Catebreeds'),
        ),
        body: LadingView()
      ),
    );
  }
}