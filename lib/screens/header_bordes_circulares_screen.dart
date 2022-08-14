import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:temas_app/theme/theme.dart';
import 'package:temas_app/widgets/headers.dart';

class HeaderBordesCircularesScreen extends StatelessWidget {
  const HeaderBordesCircularesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentTheme = Provider.of<ThemeChanger>(context).currentTheme;
    final backgroundColor = currentTheme.primaryColorLight;
    return Scaffold(
        backgroundColor: currentTheme.textTheme.bodyText1!.color,
        appBar: AppBar(
          title: const Text('Header Bordes Circulares'),
          centerTitle: true,
        ),
        body: const HeaderBordesCirculares());
  }
}
