
import 'package:flutter/material.dart';
class LadingScreen extends StatelessWidget {
  const LadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catebreeds'),
      ),
      body: SearchBar() ,
    );
  }
}