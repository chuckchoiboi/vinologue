import 'package:flutter/material.dart';

import 'package:vinologue/models/vinologue_entry.dart';

class EntriesListing extends StatelessWidget {
  const EntriesListing(this.entriesData, {super.key});

  final List<VinologueEntry> entriesData;

  @override
  Widget build(context) {
    return const Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text('card'),
            Text('card'),
            Text('card'),
          ],
        ),
      ),
    );
  }
}
