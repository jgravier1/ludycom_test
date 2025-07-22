
import 'package:flutter/material.dart';
import 'package:ludycom_test/presentation/views/lading_view.dart';
class LadingScreen extends StatelessWidget {
  const LadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catebreeds'),
      ),
      body: LadingView()
    );
  }
}