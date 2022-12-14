import 'package:flutter/material.dart';
import 'package:meet2go/models/Event.dart';
import 'package:meet2go/pages/Event/Event.dart';
import 'package:meet2go/pages/Search/Search.dart';
import 'package:meet2go/pages/home/home.dart';
import 'package:meet2go/pages/login/login.dart';

class RoutesGen {
  static Route<dynamic> generate(RouteSettings settings) {
    switch (settings.name) {
      case 'home':
        return MaterialPageRoute(builder: ((context) => const Home()));
      case 'login':
        return MaterialPageRoute(builder: ((context) => const Login()));
      case 'search':
        return MaterialPageRoute(builder: ((context) => const SearchPage()));
      case 'event':
        return MaterialPageRoute(
            builder: ((context) =>
                EventPage(event: settings.arguments as Event)));
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (context) {
        return const Scaffold(
          body: Center(child: Text('ERROR DE RUTA')),
        );
      },
    );
  }
}
