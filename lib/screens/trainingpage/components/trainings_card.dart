import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:mytraing_app/models/trainings.dart';
import 'package:mytraing_app/theme.dart';

class TraingCard extends StatelessWidget {
  const TraingCard({
    Key key,
    this.itemIndex,
    this.trainings,
    this.press,
  }) : super(key: key);

  final int itemIndex;
  final Trainings trainings;
  final Function press;

  @override
  Widget build(BuildContext context) {
    // It  will provide us total height and width of our screen
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
          margin: EdgeInsets.fromLTRB(15, 15, 15, 0),
          // color: Colors.blueAccent,
          decoration:
              BoxDecoration(color: Colors.white, boxShadow: [kDefaultShadow]),
          height: 140,
          child: Row(
            children: [
              DottedBorder(
                color: Colors.grey,
                customPath: (size) {
                  return Path()
                    ..moveTo(110, 115)
                    ..lineTo(110, 15);
                },
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  padding: EdgeInsets.only(left: 10),
                  width: MediaQuery.of(context).size.width / 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          trainings.date,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Expanded(
                        child: Text(
                          trainings.slot,
                          style: TextStyle(fontSize: 11),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          trainings.venue,
                          style: TextStyle(fontSize: 11),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 2,
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      trainings.fil,
                      style: TextStyle(color: Colors.red, fontSize: 12),
                    ),
                    Text(
                      trainings.title,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 15,
                          backgroundImage:
                              AssetImage('assets/images/traine_1.jpg'),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          children: [
                            Text(
                              trainings.sptype,
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              trainings.spname,
                              style: TextStyle(fontSize: 10),
                            )
                          ],
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: FlatButton(
                        height: 25,
                        color: Colors.red,
                        padding: EdgeInsets.fromLTRB(3, 3, 3, 5),
                        textColor: Colors.white,
                        child: Text(
                          'Enrol Now',
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
