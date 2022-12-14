import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meet2go/pages/home/widgets/HomeAppBar/HomeAppBar.dart';
import 'package:meet2go/pages/home/widgets/HomeBody/HomeBody.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: HomeAppBar(context),
      body: const SafeArea(
        child: HomeBody(),
      ),
    );
  }
}
