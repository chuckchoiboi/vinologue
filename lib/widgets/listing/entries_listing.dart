import 'package:flutter/material.dart';

import 'package:vinologue/models/vinologue_entry.dart';
import 'package:vinologue/widgets/listing/entry_card.dart';

class EntriesListing extends StatelessWidget {
  const EntriesListing(this.entriesData, {super.key});

  final List<VinologueEntry> entriesData;

  @override
  Widget build(context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: entriesData.map(
            (entry) {
              return EntryCard(entry);
            },
          ).toList(),
        ),
      ),
    );
  }
}
