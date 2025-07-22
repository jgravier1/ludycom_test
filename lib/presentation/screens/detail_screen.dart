import 'package:flutter/material.dart';
import 'package:ludycom_test/domain/entities/cat_entity.dart';
import 'package:ludycom_test/presentation/views/detail_view.dart';

class DetailScreen extends StatelessWidget {
  final CatEntity catEntity;
  const DetailScreen({super.key, required this.catEntity});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(catEntity.name),
        centerTitle: true,
      ),
      body: DetailView(
        catEntity: catEntity,
      ),
    );
  }
}