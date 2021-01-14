class TrainingModel {
  int id;
  String name;
  bool isCheck;

  TrainingModel({this.id, this.name, this.isCheck});

  static List<TrainingModel> getTraining() {
    return <TrainingModel>[
      TrainingModel(id: 1, name: "Training Name", isCheck: true),
      TrainingModel(id: 2, name: "Training Name", isCheck: false),
      TrainingModel(id: 3, name: "Training Name", isCheck: false),
      TrainingModel(id: 4, name: "Training Name", isCheck: false),
      TrainingModel(id: 5, name: "Training Name", isCheck: false),
    ];
  }
}
