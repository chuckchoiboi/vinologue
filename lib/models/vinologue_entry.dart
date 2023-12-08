import 'package:vinologue/models/conclusion.dart';
import 'package:vinologue/models/tasting_record.dart';

class VinologueEntry {
  String uuid;
  DateTime createDate;
  String entryName;
  bool isBlindTasted;
  double userRating;
  String? barcode;
  TastingRecord tastingRecord;
  InitialConclusion initialConclusion;
  FinalConclusion finalConclusion;

  VinologueEntry({
    required this.uuid,
    required this.createDate,
    required this.entryName,
    required this.isBlindTasted,
    required this.userRating,
    this.barcode,
    required this.tastingRecord,
    required this.initialConclusion,
    required this.finalConclusion,
  }) : assert(userRating >= 0.0 && userRating <= 5.0,
            'Rate must be between 0.0 and 5.0') {
    userRating = userRating;
  }
}
