import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:temas_app/screens/home_screen.dart';
import 'package:temas_app/theme/theme.dart';

void main() => runApp(
    ChangeNotifierProvider(create: (_) => ThemeChanger(2), child: MyApp()));

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentTheme = Provider.of<ThemeChanger>(context).currentTheme;
    return MaterialApp(
        theme: currentTheme,
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: const HomeScreen());
  }
}
