import "package:vinologue/models/vinologue_entry.dart";

class User {
  String uuid;
  String username;
  String email;
  List<VinologueEntry> userEntries;

  User({
    required this.uuid,
    required this.username,
    required this.email,
    required this.userEntries,
  });
}
