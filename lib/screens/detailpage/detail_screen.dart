import 'package:flutter/material.dart';
import 'package:mytraing_app/models/trainings.dart';
import 'package:mytraing_app/theme.dart';

import 'components/body.dart';

class DetailsScreen extends StatelessWidget {
  final Trainings trainings;

  const DetailsScreen({Key key, this.trainings}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      appBar: buildAppBar(context),
      body: Body(
        trainings: trainings,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        padding: EdgeInsets.only(left: 15),
        icon: Icon(
          Icons.arrow_back,
          color: primary,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      centerTitle: false,
      title: Text(
        trainings.title,
        style: TextStyle(
            fontSize: 18, color: Colors.black, fontWeight: FontWeight.w500),
      ),
    );
  }
}
