import 'package:vinologue/models/vinologue_entry.dart';
import 'package:vinologue/models/conclusion.dart';
import 'package:vinologue/models/tasting_record.dart';
import 'package:vinologue/models/enums.dart';

List<VinologueEntry> entriesData = [
  VinologueEntry(
    uuid: '123456789',
    createDate: DateTime.now(),
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
