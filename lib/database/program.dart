class ProgramModel {
  String jour;
  String date;
  String activity;
  String orateur;

  ProgramModel({
    required this.date,
    required this.activity,
    required this.jour,
    required this.orateur,
  });
}

List<ProgramModel> programList = [
  ProgramModel(
      date: "15-17h 01/05/2024",
      activity: "Priere",
      jour: "Mercredie",
      orateur: "Pasteur Honore"),
  ProgramModel(
      date: " 15h-17h 05/05/2024",
      activity: "culte",
      jour: "Vendredie",
      orateur: "Pasteur Honore"),
  ProgramModel(
      date: " 10h-13h 05/05/2024",
      activity: "culte",
      jour: "Dimanche",
      orateur: "Pasteur Honore")
];
