import 'package:flutter/material.dart';
import 'package:ludycom_test/presentation/views/detail_view.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nombre Raza'),
      ),
      body: DetailView(),
    );
  }
}