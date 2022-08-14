import 'package:flutter/material.dart';
import 'package:temas_app/widgets/headers.dart';

class HeaderWavesScreen extends StatelessWidget {
  const HeaderWavesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Header Waves'),
        centerTitle: true,
      ),
      body: HeaderWaves(),
    );
  }
}
