import 'package:flutter/material.dart';

import 'package:vinologue/models/vinologue_entry.dart';

class EntryCard extends StatelessWidget {
  const EntryCard(this.entryData, {super.key});

  final VinologueEntry entryData;

  @override
  Widget build(context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  entryData.wineName,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Row(
                  children: [
                    Text(entryData.region),
                    const Spacer(),
                    Text(entryData.userRating.toString())
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
