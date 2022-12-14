import 'package:flutter/material.dart';
import 'package:meet2go/cofig/Colors.dart';

class ButonSearch extends StatelessWidget {
  const ButonSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding:
            const EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: AppColors.input_bg_grey,
          borderRadius: BorderRadius.circular(50),
        ),
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'Buscar artista o ciudad',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColors.input_text_grey),
            ),
            Icon(
              Icons.search,
              color: AppColors.input_text_grey,
              size: 30,
            )
          ],
        ),
      ),
      onTap: () {
        Navigator.pushNamed(context, 'search');
      },
    );
  }
}
