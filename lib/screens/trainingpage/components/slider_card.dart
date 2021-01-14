import 'package:flutter/material.dart';
import 'package:mytraing_app/models/highlights.dart';
import 'package:mytraing_app/theme.dart';

class SliderCard extends StatelessWidget {
  const SliderCard({
    Key key,
    this.itemIndex,
    this.highlights,
    this.press,
  }) : super(key: key);

  final int itemIndex;
  final Highlights highlights;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      colorFilter: new ColorFilter.mode(
                          Colors.black.withOpacity(0.3), BlendMode.dstATop),
                      image: AssetImage(highlights.image))),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    highlights.title,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    highlights.venue + highlights.date,
                    style: TextStyle(
                        color: Colors.white.withOpacity(.8),
                        fontSize: 15,
                        fontWeight: FontWeight.normal),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text.rich(
                          TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: '\$976',
                                style: new TextStyle(
                                  color: primary,
                                  decoration: TextDecoration.lineThrough,
                                ),
                              ),
                              TextSpan(
                                  text: ' \$870',
                                  style: TextStyle(
                                      color: primary,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                "View Details",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 13),
                              ),
                            ),
                            Column(
                              children: [
                                Icon(
                                  Icons.arrow_forward,
                                  size: 13,
                                  color: Colors.white,
                                ),
                              ],
                            )
                          ],
                        )
                      ])
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
