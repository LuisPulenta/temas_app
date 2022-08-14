import 'package:flutter/material.dart';
import 'package:temas_app/widgets/headers.dart';

class HeaderCuadradoScreen extends StatelessWidget {
  const HeaderCuadradoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Header Cuadrado'),
        centerTitle: true,
      ),
      body: const HeaderCuadrado(),
    );
  }
}
