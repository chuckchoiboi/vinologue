class VinologueEntry {
  int vintage;
  String wineName;
  String region;
  String grapeVarietal;
  String redOrWhite;
  double userRating;
  DateTime entryDate;

  VinologueEntry({
    required this.vintage,
    required this.wineName,
    required this.region,
    required this.grapeVarietal,
    required this.redOrWhite,
    required this.userRating,
    required this.entryDate,
  });
}
