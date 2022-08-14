import 'package:flutter/material.dart';
import 'package:temas_app/widgets/headers.dart';

class HeaderCurvoScreen extends StatelessWidget {
  const HeaderCurvoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Header Curvo'),
        centerTitle: true,
      ),
      body: const HeaderCurvo(),
    );
  }
}
