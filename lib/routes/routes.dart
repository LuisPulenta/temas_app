import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:temas_app/screens/screens.dart';
import 'package:temas_app/widgets/headers.dart';

final pageRoutes = <_Route>[
  _Route(
      route: 'animaciones',
      name: 'Animaciones',
      screen: const AnimacionesScreen(),
      icon: FontAwesomeIcons.truckMedical),
  _Route(
      route: 'colores',
      name: 'Colores',
      screen: const ColoresScreen(),
      icon: FontAwesomeIcons.shapes),
  _Route(
      route: 'encabezadocircular',
      name: 'Encabezado Circular',
      screen: const HeaderBordesCircularesScreen(),
      icon: FontAwesomeIcons.heading),
  _Route(
      route: 'encabezadocuadrado',
      name: 'Encabezado Cuadrado',
      screen: const HeaderCuadradoScreen(),
      icon: FontAwesomeIcons.peopleCarryBox),
  _Route(
      route: 'encabezadocurvo',
      name: 'Encabezado Curvo',
      screen: const HeaderCurvoScreen(),
      icon: FontAwesomeIcons.peopleCarryBox),
  _Route(
      route: 'encabezadodiagonal',
      name: 'Encabezado Diagonal',
      screen: const HeaderDiagonalScreen(),
      icon: FontAwesomeIcons.circleNotch),
  _Route(
      route: 'encabezadogradiente',
      name: 'Encabezado Gradiente',
      screen: const HeaderGradienteScreen(),
      icon: FontAwesomeIcons.pinterest),
  _Route(
      route: 'encabezadopico',
      name: 'Encabezado Pico',
      screen: const HeaderPicoScreen(),
      icon: FontAwesomeIcons.mobile),
  _Route(
      route: 'encabezadotriangulo',
      name: 'Encabezado Triángulo',
      screen: const HeaderTrianguloScreen(),
      icon: FontAwesomeIcons.mobile),
  _Route(
      route: 'encabezadowave',
      name: 'Encabezado Wave',
      screen: const HeaderWavesScreen(),
      icon: FontAwesomeIcons.mobile),
];

// static Map<String, Widget Function(BuildContext)> getAppRoutes() {
//   Map<String, Widget Function(BuildContext)> appRoutes = {};

//   appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

//   for (final option in menuOptions) {
//     appRoutes.addAll({option.route: (BuildContext context) => option.screen});
//   }
//   return appRoutes;
// }

// static Route<dynamic> onGenerateRoute(RouteSettings settings) {
//   return MaterialPageRoute(
//     builder: (context) => const AlertScreen(),
//   );
// }

//--------------------- _Route ---------------------------

class _Route {
  final String route;
  final IconData icon;
  final String name;
  final Widget screen;

  _Route(
      {required this.route,
      required this.icon,
      required this.name,
      required this.screen});
}
