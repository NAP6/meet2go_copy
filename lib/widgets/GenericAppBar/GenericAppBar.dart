import 'package:flutter/material.dart';

class GenericAppBar extends AppBar {
  GenericAppBar({super.key, required context, required title})
      : super(
            title: Text(title),
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back,
                  size: 30,
                )),
            elevation: 0);
}
