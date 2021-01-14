import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:mytraing_app/models/highlights.dart';

import '../../../theme.dart';

class BodyHigh extends StatelessWidget {
  final Highlights highlights;

  const BodyHigh({Key key, this.highlights}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // it provide us total height and width
    Size size = MediaQuery.of(context).size;
    // it enable scrolling on small devices
    return SafeArea(
      bottom: false,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
                margin: EdgeInsets.fromLTRB(15, 15, 15, 0),
                // color: Colors.blueAccent,
                decoration: BoxDecoration(
                    color: Colors.white, boxShadow: [kDefaultShadow]),
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
                                highlights.date,
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Expanded(
                              child: Text(
                                highlights.slot,
                                style: TextStyle(fontSize: 11),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                highlights.venue,
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
                            highlights.fil,
                            style: TextStyle(color: Colors.red, fontSize: 12),
                          ),
                          Text(
                            highlights.title,
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
                                    highlights.sptype,
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    highlights.spname,
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
            SizedBox(
              height: 5,
            ),
            Container(
                margin: EdgeInsets.fromLTRB(15, 15, 15, 0),
                padding: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width,
                // color: Colors.blueAccent,
                decoration: BoxDecoration(
                    color: Colors.white, boxShadow: [kDefaultShadow]),
                child: Column(
                  children: [
                    Text(
                      "Discription",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    RichText(
                      textAlign: TextAlign.justify,
                      text: TextSpan(
                          text:
                              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. ',
                          style: TextStyle(color: Colors.black)),
                    ),
                  ],
                )),

            // Center(
            //   child: Hero(
            //     tag: '${trainings.id}',
            //     child: Container(),
            //   ),
            // ),
            // SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
