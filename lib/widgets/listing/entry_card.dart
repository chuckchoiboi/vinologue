import 'package:flutter/material.dart';

import 'package:vinologue/models/vinologue_entry.dart';
import 'package:vinologue/widgets/listing/user_rating_stars.dart';

class EntryCard extends StatelessWidget {
  const EntryCard(this.entryData, this.listingView, {super.key});

  final VinologueEntry entryData;
  final String listingView;

  @override
  Widget build(context) {
    return Card(
      child: Column(
        children: [
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 200),
            child: listingView == 'stacked'
                ? ClipRRect(
                    key: const ValueKey<String>('stacked'),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15.0),
                      topRight: Radius.circular(15.0),
                    ),
                    child: Image.asset(
                      'assets/images/${entryData.redOrWhite}-wine.jpg',
                      width: double.infinity,
                      height: 400,
                      fit: BoxFit.cover,
                    ),
                  )
                : const SizedBox.shrink(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  entryData.wineName,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(height: 5),
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
