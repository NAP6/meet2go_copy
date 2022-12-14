import 'package:flutter/material.dart';
import 'package:meet2go/cofig/Colors.dart';
import 'package:meet2go/models/Event.dart';
import 'package:meet2go/pages/Event/widgets/EventBody/EventBody.dart';
import 'package:meet2go/widgets/GenericAppBar/GenericAppBar.dart';

class EventPage extends StatelessWidget {
  Event event;

  EventPage({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: GenericAppBar(
          context: context,
          title: 'Eventos',
        ),
        body: SafeArea(child: EventBody(event: event)));
  }
}
