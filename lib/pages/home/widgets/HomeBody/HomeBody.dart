import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meet2go/cofig/Colors.dart';
import 'package:meet2go/pages/home/widgets/HomeBody/ButonSearch/ButonSearch.dart';
import 'package:meet2go/pages/home/widgets/HomeBody/HomeBodyChoiseChips/HomeBodyChoiseChips.dart';
import 'package:meet2go/widgets/ChoiseChips/ChoiseChips.dart';
import 'package:meet2go/widgets/ChoiseChips/modles/choiseChipsItem.dart';
import 'package:meet2go/pages/home/widgets/HomeBody/EventsGrid/EventsGrid.dart';
import 'package:meet2go/pages/home/widgets/HomeBody/Slider/Slider.dart';

class HomeBody extends ConsumerStatefulWidget {
  const HomeBody({super.key});

  @override
  _HomeBody createState() => _HomeBody();
}

class _HomeBody extends ConsumerState<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.black),
      child: ListView(
        children: [
          ButonSearch(),
          HomeSlider(),
          HomeBodyChoiseChips(),
          EventsGrid()
        ],
      ),
    );
  }
}
