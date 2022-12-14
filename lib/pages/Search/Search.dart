import 'package:flutter/material.dart';
import 'package:meet2go/models/Event.dart';
import 'package:meet2go/pages/Search/widgets/FoundedEventList/FoundedEventList.dart';
import 'package:meet2go/pages/Search/widgets/InputSearch/InputSearch.dart';

import '../../controllers/Event.controller.dart';
import '../../widgets/GenericAppBar/GenericAppBar.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  String textSearch = '';
  late Future<List<Event>> futureEvent;

  @override
  void initState() {
    super.initState();
    futureEvent = EventController.search(textSearch);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: GenericAppBar(
          context: context,
          title: 'Buscar',
        ),
        body: SafeArea(
            child: Container(
          color: Colors.black,
          child: ListView(
            children: [
              InputSearch(
                calbackOnChange: (text) {
                  setState(() {
                    textSearch = text;
                    futureEvent = EventController.search(textSearch);
                  });
                },
              ),
              FutureBuilder(
                future: futureEvent,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return FoundedEventList(events: snapshot.data!);
                  }
                  return const CircularProgressIndicator();
                },
              )
            ],
          ),
        )));
  }
}
