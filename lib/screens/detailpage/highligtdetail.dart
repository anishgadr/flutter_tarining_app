import 'package:flutter/material.dart';
import 'package:mytraing_app/models/highlights.dart';
import 'package:mytraing_app/screens/detailpage/components/body_high.dart';
import 'package:mytraing_app/theme.dart';

class HighLightDet extends StatelessWidget {
  final Highlights highlights;

  const HighLightDet({Key key, this.highlights}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      appBar: buildAppBar(context),
      body: BodyHigh(
        highlights: highlights,
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
        highlights.title,
        style: TextStyle(
            fontSize: 18, color: Colors.black, fontWeight: FontWeight.w500),
      ),
    );
  }
}
