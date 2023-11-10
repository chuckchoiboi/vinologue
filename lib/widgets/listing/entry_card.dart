import 'package:flutter/material.dart';

import 'package:vinologue/models/vinologue_entry.dart';
import 'package:vinologue/widgets/listing/user_rating_stars.dart';

class EntryCard extends StatelessWidget {
  const EntryCard(this.entryData, {super.key});

  final VinologueEntry entryData;

  @override
  Widget build(context) {
    return Card(
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10.0),
              topRight: Radius.circular(10.0),
            ),
            child: Image.asset(
              'assets/images/${entryData.redOrWhite}-wine.jpg',
              width: double.infinity,
              height: 400,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: Column(
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
                    UserRatingStars(entryData.userRating)
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
