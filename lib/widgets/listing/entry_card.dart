import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:vinologue/models/vinologue_entry.dart';
import 'package:vinologue/widgets/listing/user_rating_stars.dart';

class EntryCard extends StatelessWidget {
  const EntryCard(this.entryData, this.listingView, {super.key});

  final VinologueEntry entryData;
  final String listingView;

  String getImagePath() {
    String wineType = entryData.tastingRecord.wineType.toString().split('.')[1];
    return 'assets/images/$wineType-wine.jpg';
  }

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
                      getImagePath(),
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
                  entryData.entryName,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    Text(DateFormat('yyyy-MM-dd HH:mm:ss')
                        .format(entryData.createDate)),
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
