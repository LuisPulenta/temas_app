import 'package:flutter/material.dart';
import 'package:temas_app/widgets/headers.dart';

class HeaderTrianguloScreen extends StatelessWidget {
  const HeaderTrianguloScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HeaderTrianguloScreen'),
        centerTitle: true,
      ),
      body: const HeaderTriangulo(),
    );
  }
}
