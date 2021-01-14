class LocationModel {
  int id;
  String placename;
  bool isCheck;

  LocationModel({this.id, this.placename, this.isCheck});

  static List<LocationModel> getPlace() {
    return <LocationModel>[
      LocationModel(id: 1, placename: "Place 1", isCheck: true),
      LocationModel(id: 2, placename: "Place 2", isCheck: false),
      LocationModel(id: 3, placename: "Place 3", isCheck: false),
      LocationModel(id: 4, placename: "Place 4", isCheck: false),
      LocationModel(id: 5, placename: "Place 5", isCheck: false),
    ];
  }
}
