import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChipChoise extends StatelessWidget {
  int index;
  String label;
  bool is_selected;
  Function ChangeState;
  Color textColor;
  Color bg;
  Color bg_if_is_selected;
  Icon? icon;

  ChipChoise(
      {super.key,
      this.icon,
      required this.index,
      required this.label,
      required this.is_selected,
      required this.ChangeState,
      required this.textColor,
      required this.bg,
      required this.bg_if_is_selected});

  @override
  Widget build(BuildContext context) {
    Widget labelwidget;
    if (icon != null) {
      labelwidget = RichText(
          text: TextSpan(
        children: [WidgetSpan(child: icon!), TextSpan(text: label)],
      ));
    } else {
      labelwidget = Text(label);
    }
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 5),
      child: ChoiceChip(
        label: labelwidget,
        labelStyle: TextStyle(color: textColor),
        backgroundColor: bg,
        selected: is_selected,
        selectedColor: bg_if_is_selected,
        onSelected: (bool value) {
          ChangeState(index);
        },
      ),
    );
  }
}
