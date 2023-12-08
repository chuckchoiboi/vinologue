import 'package:vinologue/models/enums.dart';

class InitialConclusion {
  OldWorldNewWorld oldWorldNewWorld;
  Climate climate;
  String grapeVariety;
  String possibleCountries;
  AgeRange ageRange;

  InitialConclusion({
    required this.oldWorldNewWorld,
    required this.climate,
    required this.grapeVariety,
    required this.possibleCountries,
    required this.ageRange,
  });
}

class FinalConclusion {
  String vintage;
  String grapeVariety;
  String country;
  String regionAppellation;
  Quality quality;

  FinalConclusion({
    required this.vintage,
    required this.grapeVariety,
    required this.country,
    required this.regionAppellation,
    required this.quality,
  });
}
