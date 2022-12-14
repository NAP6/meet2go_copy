import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:meet2go/cofig/Colors.dart';
import 'package:meet2go/models/Event.dart';

class FoundedEventList extends StatefulWidget {
  List<Event> events;
  FoundedEventList({super.key, required this.events});

  @override
  State<FoundedEventList> createState() => _FoundedEventListState();
}

class _FoundedEventListState extends State<FoundedEventList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: widget.events
          .map((e) => Container(
                height: 100,
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                        width: 80,
                        height: 80,
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(shape: BoxShape.circle),
                        child: Image.network(
                          e.image,
                          fit: BoxFit.cover,
                        )),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              e.title,
                              style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.input_text_grey),
                            ),
                            Text(
                              e.description,
                              style: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.input_bg_grey),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(3),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.input_bg_grey,
                      ),
                      child: const Icon(
                        Icons.arrow_forward_ios,
                        color: AppColors.input_text_grey,
                      ),
                    )
                  ],
                ),
              ))
          .toList(),
    );
  }
}
