import 'package:flutter/material.dart';
import 'package:mytraing_app/theme.dart';
import 'components/body.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      backgroundColor: primary,
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      centerTitle: false,
      title: Text(
        'Trainings',
        style: TextStyle(
            fontSize: 26, fontWeight: FontWeight.bold, letterSpacing: 2),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
      ],
    );
  }
}
