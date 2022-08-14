import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:temas_app/routes/routes.dart';
import 'package:temas_app/theme/theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Nombre App'),
          centerTitle: true,
        ),
        drawer: _MenuPrincipal(),
        body: _ListaOpciones());
  }
}

//--------------------- _ListaOpciones ------------------------

class _ListaOpciones extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTheme = Provider.of<ThemeChanger>(context).currentTheme;

    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      separatorBuilder: (context, i) => Divider(
        color: appTheme.primaryColorLight,
      ),
      itemCount: pageRoutes.length,
      itemBuilder: (context, i) => ListTile(
        leading: FaIcon(
          pageRoutes[i].icon,
          color: appTheme.colorScheme.secondary,
        ),
        title: Text(pageRoutes[i].name),
        trailing: Icon(
          Icons.chevron_right,
          color: appTheme.colorScheme.secondary,
        ),
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => pageRoutes[i].screen));
        },
      ),
    );
  }
}

//--------------------- _MenuPrincipal ------------------------

class _MenuPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTheme = Provider.of<ThemeChanger>(context);
    final secondaryColor = appTheme.currentTheme.colorScheme.secondary;
    final primaryColor = appTheme.currentTheme.primaryColorDark;

    return Drawer(
      child: Column(
        children: [
          SafeArea(
            child: Container(
              color: primaryColor,
              padding: const EdgeInsets.symmetric(vertical: 10),
              width: double.infinity,
              height: 200,
              child: CircleAvatar(
                backgroundColor: secondaryColor,
                child: Text("LN",
                    style: TextStyle(
                        color: primaryColor,
                        fontSize: 50,
                        fontWeight: FontWeight.bold)),
              ),
            ),
          ),
          Expanded(
            child: _ListaOpciones(),
          ),
          Container(
            color: primaryColor,
            child: ListTile(
              leading: Icon(
                Icons.lightbulb_outline,
                color: secondaryColor,
              ),
              title: const Text("Dark Mode"),
              trailing: Switch.adaptive(
                value: appTheme.darkTheme,
                onChanged: (value) {
                  appTheme.darkTheme = value;
                },
              ),
            ),
          ),
          Container(
            color: primaryColor,
            child: SafeArea(
              bottom: true,
              top: false,
              left: false,
              right: false,
              child: ListTile(
                leading: Icon(
                  Icons.add_to_home_screen,
                  color: secondaryColor,
                ),
                title: const Text("Custom Theme"),
                trailing: Switch.adaptive(
                  value: appTheme.customTheme,
                  onChanged: (value) {
                    appTheme.customTheme = value;
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
