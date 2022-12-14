import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meet2go/cofig/Routes.dart';
import 'package:meet2go/cofig/Theme.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      initialRoute: 'home',
      onGenerateRoute: RoutesGen.generate,
      theme: appTheme,
    );
  }
}
