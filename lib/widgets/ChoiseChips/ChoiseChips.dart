import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meet2go/widgets/ChoiseChips/widgets/Chip.dart';
import 'package:meet2go/widgets/ChoiseChips/modles/choiseChipsItem.dart';

class CoisenChips extends StatefulWidget {
  List<ChoiseChipItem> chips;
  Color textColor;
  Color bg;
  Color bg_if_is_selected;

  CoisenChips(
      {super.key,
      required this.chips,
      required this.textColor,
      required this.bg,
      required this.bg_if_is_selected});

  @override
  _ChoisenChips createState() {
    return _ChoisenChips();
  }
}

class _ChoisenChips extends State<CoisenChips> {
  int index_selected_chip = -1;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 6,
      direction: Axis.horizontal,
      children: widget.chips
          .map((e) => ChipChoise(
              icon: e.icon,
              index: e.id,
              label: e.label,
              is_selected: (index_selected_chip == e.id),
              ChangeState: (index_cb) {
                setState(() {
                  index_selected_chip = index_cb;
                });
              },
              textColor: widget.textColor,
              bg: widget.bg,
              bg_if_is_selected: widget.bg_if_is_selected))
          .toList(),
    );
  }
}
