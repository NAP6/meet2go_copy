import 'package:flutter/material.dart';
import 'package:meet2go/controllers/Event.controller.dart';
import 'package:meet2go/models/Event.dart';
import 'package:meet2go/pages/home/widgets/HomeBody/EventsGrid/widgets/EventGridItem.dart';

class EventsGrid extends StatefulWidget {
  @override
  _EventsGrid createState() => _EventsGrid();
}

class _EventsGrid extends State<EventsGrid> {
  late Future<List<Event>> futureEvent;

  @override
  void initState() {
    super.initState();
    futureEvent = EventController.getAll();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Event>>(
      future: futureEvent,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12.0,
                mainAxisSpacing: 12.0,
                // mainAxisExtent: 100,
              ),
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) => InkWell(
                onTap: () => Navigator.pushNamed(context, 'event',
                    arguments: snapshot.data!.elementAt(index)),
                child: EventGridItem(
                  evetn: snapshot.data!.elementAt(index),
                ),
              ),
            ),
          );
        }
        return const CircularProgressIndicator();
      },
    );
  }
}
