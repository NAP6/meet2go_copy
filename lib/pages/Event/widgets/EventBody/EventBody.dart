import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:meet2go/models/Event.dart';

import '../../../../cofig/Colors.dart';

class EventBody extends StatelessWidget {
  Event event;
  EventBody({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Image.network(
          event.image,
          width: double.infinity,
          height: 200,
          fit: BoxFit.cover,
        ),
        Container(
            padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Stand Up',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                const Divider(
                  thickness: 1.5,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, bottom: 10),
                  child: Text(
                    event.title,
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: AppColors.input_text_grey),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [Icon(Icons.access_time), Text(event.date)],
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.add_location,
                          color: AppColors.yellow,
                        ),
                        Text(
                          'Ubicacion',
                          style: TextStyle(color: AppColors.yellow),
                        )
                      ],
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Text(
                    'Event Details',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: AppColors.input_text_grey),
                  ),
                ),
                Text(
                  event.description,
                  style: const TextStyle(fontSize: 18),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 40),
                  padding: const EdgeInsets.all(10),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: AppColors.yellow,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: const Center(
                    child: Text(
                      'RSVP to Event',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black),
                    ),
                  ),
                )
              ],
            ))
      ],
    );
  }
}
