import 'package:flutter/material.dart';
import 'package:temas_app/widgets/headers.dart';

class HeaderDiagonalScreen extends StatelessWidget {
  const HeaderDiagonalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Header Diagonal'),
        centerTitle: true,
      ),
      body: const HeaderDiagonal(),
    );
  }
}
