import 'package:flutter/material.dart';
import 'package:temas_app/widgets/headers.dart';

class HeaderGradienteScreen extends StatelessWidget {
  const HeaderGradienteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Header Gradiente'),
        centerTitle: true,
      ),
      body: const HeaderGradiente(),
    );
  }
}
