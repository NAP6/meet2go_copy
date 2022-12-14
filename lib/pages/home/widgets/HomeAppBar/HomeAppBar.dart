import 'package:flutter/material.dart';
import 'package:meet2go/cofig/Images.dart';

class HomeAppBar extends AppBar {
  HomeAppBar(context, {super.key})
      : super(
            title: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Image.asset(
                logo,
                width: 150,
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: IconButton(
                    onPressed: () {
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: ((context) => Login())));
                      Navigator.pushNamed(context, 'login');
                    },
                    icon: const Icon(
                      Icons.person,
                      size: 30,
                    )),
              )
            ],
            toolbarHeight: 100,
            backgroundColor: Colors.black,
            elevation: 0);
}
