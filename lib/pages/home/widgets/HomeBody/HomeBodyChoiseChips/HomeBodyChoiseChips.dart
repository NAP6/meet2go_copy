import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../cofig/Colors.dart';
import '../../../../../widgets/ChoiseChips/ChoiseChips.dart';
import '../../../../../widgets/ChoiseChips/modles/choiseChipsItem.dart';

class HomeBodyChoiseChips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CoisenChips(
          chips: [
            ChoiseChipItem(id: 1, label: 'Esta Semana'),
            ChoiseChipItem(id: 2, label: 'Este Mes'),
            ChoiseChipItem(
                id: 3, label: 'Fecha', icon: Icon(Icons.calendar_month))
          ],
          textColor: Colors.white,
          bg: AppColors.input_bg_grey,
          bg_if_is_selected: AppColors.yellow),
    );
  }
}
