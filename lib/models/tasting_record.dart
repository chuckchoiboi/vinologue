import 'package:vinologue/models/enums.dart';

class Sight {
  Clarity clarity;
  Brightness brightness;
  Concentration concentration;
  bool gasEvidence;
  bool particles;
  Color color;
  Hue hue;
  bool rimVariation;
  Staining staining;
  Tears tears;

  Sight({
    required this.clarity,
    required this.brightness,
    required this.concentration,
    required this.gasEvidence,
    required this.particles,
    required this.color,
    required this.hue,
    required this.rimVariation,
    required this.staining,
    required this.tears,
  });
}

class Nose {
  List<Fault> faulty;
  Intensity intensity;
  AgeAssessment ageAssessment;
  List<Fruit> fruit;
  List<FruitCharacter> fruitCharacter;
  List<NonFruit> nonFruit;
  List<OrganicEarth> organicEarth;
  List<InorganicEarth> inorganicEarth;
  List<TertiaryAged> tertiaryAged;
  List<Wood> wood;

  Nose({
    required this.faulty,
    required this.intensity,
    required this.ageAssessment,
    required this.fruit,
    required this.fruitCharacter,
    required this.nonFruit,
    required this.organicEarth,
    required this.inorganicEarth,
    required this.tertiaryAged,
    required this.wood,
  });
}

class PalateStructure {
  Sweetness sweetness;
  IntensityScale tannin;
  IntensityScale acid;
  IntensityScale alcohol;
  BodyTexture bodyTexture;

  PalateStructure({
    required this.sweetness,
    required this.tannin,
    required this.acid,
    required this.alcohol,
    required this.bodyTexture,
  });
}

class PalateFlavor {
  List<Fruit> fruit;
  List<FruitCharacter> fruitCharacter;
  List<NonFruit> nonFruit;
  List<OrganicEarth> organicEarth;
  List<InorganicEarth> inorganicEarth;
  List<Wood> wood;
  Length length;
  Complexity complexity;

  PalateFlavor({
    required this.fruit,
    required this.fruitCharacter,
    required this.nonFruit,
    required this.organicEarth,
    required this.inorganicEarth,
    required this.wood,
    required this.length,
    required this.complexity,
  });
}

class TastingRecord {
  WineType wineType;
  Sight sight;
  Nose nose;
  PalateStructure palateStructure;
  PalateFlavor palateFlavor;

  TastingRecord({
    required this.wineType,
    required this.sight,
    required this.nose,
    required this.palateStructure,
    required this.palateFlavor,
  });
}
