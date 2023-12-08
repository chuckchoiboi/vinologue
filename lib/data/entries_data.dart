import 'package:vinologue/models/vinologue_entry.dart';
import 'package:vinologue/models/conclusion.dart';
import 'package:vinologue/models/tasting_record.dart';
import 'package:vinologue/models/enums.dart';

List<VinologueEntry> entriesData = [
  VinologueEntry(
    uuid: '123456789',
    createDate: DateTime(2023, 3, 15),
    entryName: 'My Wine Tasting Experience',
    isBlindTasted: true,
    userRating: 4.5,
    barcode: '1234567890123',
    tastingRecord: TastingRecord(
      wineType: WineType.red,
      sight: Sight(
        clarity: Clarity.clear,
        brightness: Brightness.bright,
        concentration: Concentration.deep,
        gasEvidence: true,
        particles: false,
        color: Color.ruby,
        hue: Hue.ruby,
        rimVariation: true,
        staining: Staining.medium,
        tears: Tears.heavy,
      ),
      nose: Nose(
        faulty: [Fault.tca, Fault.h2s],
        intensity: Intensity.powerful,
        ageAssessment: AgeAssessment.vinous,
        fruit: [Fruit.redBerry, Fruit.blackBerry],
        fruitCharacter: [FruitCharacter.ripe, FruitCharacter.jammy],
        nonFruit: [NonFruit.floral, NonFruit.spice],
        organicEarth: [OrganicEarth.forestFloor, OrganicEarth.compost],
        inorganicEarth: [InorganicEarth.mineral, InorganicEarth.volcanic],
        tertiaryAged: [TertiaryAged.meaty, TertiaryAged.leather],
        wood: [Wood.old, Wood.newWood],
      ),
      palateStructure: PalateStructure(
        sweetness: Sweetness.dry,
        tannin: IntensityScale.medium,
        acid: IntensityScale.medium,
        alcohol: IntensityScale.mediumPlus,
        bodyTexture: BodyTexture.medium,
      ),
      palateFlavor: PalateFlavor(
        fruit: [Fruit.redBerry, Fruit.blackBerry],
        fruitCharacter: [FruitCharacter.ripe, FruitCharacter.jammy],
        nonFruit: [NonFruit.floral, NonFruit.spice],
        organicEarth: [OrganicEarth.forestFloor, OrganicEarth.compost],
        inorganicEarth: [InorganicEarth.mineral, InorganicEarth.volcanic],
        wood: [Wood.old, Wood.newWood],
        length: Length.medium,
        complexity: Complexity.moderate,
      ),
    ),
    initialConclusion: InitialConclusion(
      oldWorldNewWorld: OldWorldNewWorld.oldWorld,
      climate: Climate.moderate,
      grapeVariety: 'Cabernet Sauvignon',
      possibleCountries: 'France',
      ageRange: AgeRange.under5,
    ),
    finalConclusion: FinalConclusion(
      vintage: '2016',
      grapeVariety: 'Cabernet Sauvignon',
      country: 'France',
      regionAppellation: 'Bordeaux',
      quality: Quality.aocDocg,
    ),
  ),
  VinologueEntry(
    uuid: '987654321',
    createDate: DateTime(2023, 7, 1),
    entryName: 'Special Occasion Celebration',
    isBlindTasted: false,
    userRating: 4.8,
    barcode: '9876543210987',
    tastingRecord: TastingRecord(
      wineType: WineType.white,
      sight: Sight(
        clarity: Clarity.clear,
        brightness: Brightness.brilliant,
        concentration: Concentration.medium,
        gasEvidence: false,
        particles: false,
        color: Color.gold,
        hue: Hue.orange,
        rimVariation: true,
        staining: Staining.light,
        tears: Tears.light,
      ),
      nose: Nose(
        faulty: [Fault.oxidation],
        intensity: Intensity.delicate,
        ageAssessment: AgeAssessment.youthful,
        fruit: [Fruit.citrus, Fruit.stone],
        fruitCharacter: [FruitCharacter.ripe, FruitCharacter.tart],
        nonFruit: [NonFruit.floral, NonFruit.herbal],
        organicEarth: [OrganicEarth.freshSoil],
        inorganicEarth: [InorganicEarth.mineral],
        tertiaryAged: [],
        wood: [],
      ),
      palateStructure: PalateStructure(
        sweetness: Sweetness.dry,
        tannin: IntensityScale.low,
        acid: IntensityScale.mediumPlus,
        alcohol: IntensityScale.medium,
        bodyTexture: BodyTexture.light,
      ),
      palateFlavor: PalateFlavor(
        fruit: [Fruit.citrus, Fruit.stone],
        fruitCharacter: [FruitCharacter.ripe, FruitCharacter.tart],
        nonFruit: [NonFruit.floral, NonFruit.herbal],
        organicEarth: [OrganicEarth.freshSoil],
        inorganicEarth: [InorganicEarth.mineral],
        wood: [],
        length: Length.mediumPlus,
        complexity: Complexity.complex,
      ),
    ),
    initialConclusion: InitialConclusion(
      oldWorldNewWorld: OldWorldNewWorld.newWorld,
      climate: Climate.cool,
      grapeVariety: 'Chardonnay',
      possibleCountries: 'United States',
      ageRange: AgeRange.under3,
    ),
    finalConclusion: FinalConclusion(
      vintage: '2019',
      grapeVariety: 'Chardonnay',
      country: 'United States',
      regionAppellation: 'California',
      quality: Quality.grandPremierCru,
    ),
  ),
  VinologueEntry(
    uuid: '456789012',
    createDate: DateTime(2023, 11, 22),
    entryName: 'Cozy Evening Delight',
    isBlindTasted: false,
    userRating: 4.2,
    barcode: '4567890123456',
    tastingRecord: TastingRecord(
      wineType: WineType.red,
      sight: Sight(
        clarity: Clarity.slightlyCloudy,
        brightness: Brightness.dull,
        concentration: Concentration.medium,
        gasEvidence: false,
        particles: true,
        color: Color.ruby,
        hue: Hue.ruby,
        rimVariation: true,
        staining: Staining.medium,
        tears: Tears.medium,
      ),
      nose: Nose(
        faulty: [],
        intensity: Intensity.moderate,
        ageAssessment: AgeAssessment.vinous,
        fruit: [Fruit.redBerry, Fruit.blackBerry],
        fruitCharacter: [FruitCharacter.ripe, FruitCharacter.jammy],
        nonFruit: [NonFruit.spice, NonFruit.chocolate],
        organicEarth: [OrganicEarth.forestFloor, OrganicEarth.mushrooms],
        inorganicEarth: [InorganicEarth.mineral, InorganicEarth.volcanic],
        tertiaryAged: [TertiaryAged.leather, TertiaryAged.dusty],
        wood: [Wood.newWood, Wood.french],
      ),
      palateStructure: PalateStructure(
        sweetness: Sweetness.dry,
        tannin: IntensityScale.mediumPlus,
        acid: IntensityScale.mediumMinus,
        alcohol: IntensityScale.medium,
        bodyTexture: BodyTexture.medium,
      ),
      palateFlavor: PalateFlavor(
        fruit: [Fruit.redBerry, Fruit.blackBerry],
        fruitCharacter: [FruitCharacter.ripe, FruitCharacter.jammy],
        nonFruit: [NonFruit.spice, NonFruit.chocolate],
        organicEarth: [OrganicEarth.forestFloor, OrganicEarth.mushrooms],
        inorganicEarth: [InorganicEarth.mineral, InorganicEarth.volcanic],
        wood: [Wood.newWood, Wood.french],
        length: Length.long,
        complexity: Complexity.complex,
      ),
    ),
    initialConclusion: InitialConclusion(
      oldWorldNewWorld: OldWorldNewWorld.oldWorld,
      climate: Climate.warm,
      grapeVariety: 'Merlot',
      possibleCountries: 'Italy',
      ageRange: AgeRange.under10,
    ),
    finalConclusion: FinalConclusion(
      vintage: '2014',
      grapeVariety: 'Merlot',
      country: 'Italy',
      regionAppellation: 'Tuscany',
      quality: Quality.reserva,
    ),
  )
];

List<VinologueEntry> get entriesByDate {
  List<VinologueEntry> sortedList = List.from(entriesData);
  sortedList.sort((a, b) => a.createDate.compareTo(b.createDate));
  return sortedList;
}

List<VinologueEntry> get entriesByRating {
  List<VinologueEntry> sortedList = List.from(entriesData);
  sortedList.sort((a, b) => b.userRating.compareTo(a.userRating));
  return sortedList;
}

List<VinologueEntry> get entriesByEntryName {
  List<VinologueEntry> sortedList = List.from(entriesData);
  sortedList.sort((a, b) => a.entryName.compareTo(b.entryName));
  return sortedList;
}
