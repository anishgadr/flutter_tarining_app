class TrainerModel {
  int id;
  String name;
  bool isCheck;

  TrainerModel({this.id, this.name, this.isCheck});

  static List<TrainerModel> getTrainer() {
    return <TrainerModel>[
      TrainerModel(id: 1, name: "Trainer 1", isCheck: true),
      TrainerModel(id: 2, name: "Trainer 2", isCheck: false),
      TrainerModel(id: 3, name: "Trainer 3", isCheck: false),
      TrainerModel(id: 4, name: "Trainer 4", isCheck: false),
      TrainerModel(id: 5, name: "Trainer 5", isCheck: false),
    ];
  }
}
