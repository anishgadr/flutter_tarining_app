import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:mytraing_app/models/highlights.dart';
import 'package:mytraing_app/models/locationmodel.dart';
import 'package:mytraing_app/models/trainer_model.dart';
import 'package:mytraing_app/models/training_name.dart';
import 'package:mytraing_app/models/trainings.dart';
import 'package:mytraing_app/screens/detailpage/detail_screen.dart';
import 'package:mytraing_app/screens/detailpage/highligtdetail.dart';
import 'package:mytraing_app/screens/trainingpage/components/slider_card.dart';
import 'package:mytraing_app/screens/trainingpage/components/trainings_card.dart';
import 'package:mytraing_app/theme.dart';
import 'package:vertical_tabs/vertical_tabs.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<LocationModel> locationmodel = LocationModel.getPlace();
  List<TrainingModel> trainingName = TrainingModel.getTraining();
  List<TrainerModel> trainer = TrainerModel.getTrainer();
  var _searchview = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "Highlights",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            flex: 4,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 90),
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                ),
                Container(
                  constraints: BoxConstraints.expand(height: 180),
                  child: Swiper(
                    autoplay: true,
                    itemBuilder: (context, index) => SliderCard(
                      itemIndex: index,
                      highlights: high[index],
                      press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HighLightDet(
                              highlights: high[index],
                            ),
                          ),
                        );
                      },
                    ),
                    itemCount: high.length,
                    viewportFraction: 0.8,
                    scale: 0.9,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      OutlineButton(
                          child: Row(
                            children: [
                              Icon(
                                Icons.tune,
                                size: 17,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Filter",
                                style: TextStyle(fontSize: 16),
                              )
                            ],
                          ),
                          onPressed: () {
                            onBottonfilterModel(context);
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0))),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: Container(
              color: card_bg,
              child: ListView.builder(
                // here we use our demo procuts list
                itemCount: trains.length,
                physics: BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
                itemBuilder: (context, index) => TraingCard(
                  itemIndex: index,
                  trainings: trains[index],
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsScreen(
                          trainings: trains[index],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  void onBottonfilterModel(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
            height: MediaQuery.of(context).size.height * .70,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Sort and Filters",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      IconButton(
                        padding: EdgeInsets.all(5),
                        icon: Icon(
                          Icons.close,
                          size: 16,
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      )
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * .4,
                  child: VerticalTabs(
                    tabsWidth: 150,
                    tabsElevation: 0,
                    tabBackgroundColor: card_bg,
                    selectedTabTextStyle: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                    selectedTabBackgroundColor: Colors.white,
                    tabs: <Tab>[
                      Tab(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Sort By',
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ),
                      Tab(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Location'),
                      )),
                      Tab(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Trainer Name'),
                      )),
                      Tab(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Trainer'),
                      )),
                    ],
                    contents: <Widget>[
                      // tabsContent('Sort Byg on tabs'),
                      tabsContent('Sort'),
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(8),
                            padding: EdgeInsets.only(left: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3),
                              border:
                                  Border.all(width: 1.0, color: Colors.grey),
                            ),
                            child: TextField(
                              controller: _searchview,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                icon: Icon(Icons.search),
                                hintText: "Search",
                                hintStyle: TextStyle(color: grey),
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Container(
                            height: 240,
                            color: Colors.white,
                            child: ListView.builder(
                                itemCount: locationmodel.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return Container(
                                    padding: EdgeInsets.all(5.0),
                                    child: Column(
                                      children: <Widget>[
                                        CheckboxListTile(
                                            activeColor: Colors.pink[300],
                                            dense: true,
                                            //font change
                                            title: new Text(
                                              locationmodel[index].placename,
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600,
                                                  letterSpacing: 0.5),
                                            ),
                                            value: locationmodel[index].isCheck,
                                            onChanged: (bool val) {
                                              itemChange(val, index);
                                            })
                                      ],
                                    ),
                                  );
                                }),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(8),
                            padding: EdgeInsets.only(left: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3),
                              border:
                                  Border.all(width: 1.0, color: Colors.grey),
                            ),
                            child: TextField(
                              controller: _searchview,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                icon: Icon(Icons.search),
                                hintText: "Search",
                                hintStyle: TextStyle(color: grey),
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Container(
                            color: Colors.white,
                            height: 240,
                            child: ListView.builder(
                                itemCount: trainingName.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return Container(
                                    padding: EdgeInsets.all(5.0),
                                    child: Column(
                                      children: <Widget>[
                                        CheckboxListTile(
                                            activeColor: Colors.pink[300],
                                            dense: true,
                                            //font change
                                            title: new Text(
                                              trainingName[index].name,
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600,
                                                  letterSpacing: 0.5),
                                            ),
                                            value: trainingName[index].isCheck,
                                            onChanged: (bool val) {
                                              itemtrainingChange(val, index);
                                            })
                                      ],
                                    ),
                                  );
                                }),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(8),
                            padding: EdgeInsets.only(left: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3),
                              border:
                                  Border.all(width: 1.0, color: Colors.grey),
                            ),
                            child: TextField(
                              controller: _searchview,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                icon: Icon(Icons.search),
                                hintText: "Search",
                                hintStyle: TextStyle(color: grey),
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Container(
                            height: 240,
                            color: Colors.white,
                            child: ListView.builder(
                                itemCount: trainer.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return Container(
                                    padding: EdgeInsets.all(5.0),
                                    child: Column(
                                      children: <Widget>[
                                        CheckboxListTile(
                                            activeColor: Colors.pink[300],
                                            dense: true,
                                            //font change
                                            title: new Text(
                                              trainer[index].name,
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600,
                                                  letterSpacing: 0.5),
                                            ),
                                            value: trainer[index].isCheck,
                                            onChanged: (bool val) {
                                              itemtrainerChange(val, index);
                                            })
                                      ],
                                    ),
                                  );
                                }),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        });
  }

  Widget tabsContent(String caption, [String description = '']) {
    return Container(
      padding: EdgeInsets.all(20),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Text(
            caption,
            style: TextStyle(fontSize: 25),
          ),
          Divider(
            height: 20,
            color: Colors.black45,
          ),
          Text(
            description,
            style: TextStyle(fontSize: 15, color: Colors.black87),
          ),
        ],
      ),
    );
  }

  void itemChange(bool val, int index) {
    setState(() {
      locationmodel[index].isCheck = val;
    });
  }

  void itemtrainerChange(bool val, int index) {
    setState(() {
      trainer[index].isCheck = val;
    });
  }

  void itemtrainingChange(bool val, int index) {
    setState(() {
      trainingName[index].isCheck = val;
    });
  }
}
