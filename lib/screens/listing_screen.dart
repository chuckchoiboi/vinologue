import 'package:flutter/material.dart';

import 'package:vinologue/widgets/listing/entries_listing.dart';
import 'package:vinologue/widgets/listing/listing_filter.dart';

import 'package:vinologue/data/entries_data.dart';
import 'package:vinologue/models/vinologue_entry.dart';

const listingView = ['stacked', 'row'];
const filter = ['date', 'rating', 'varietal'];

void showNewEntryBottomSheet(BuildContext context) {
  showModalBottomSheet<void>(
    context: context,
    builder: (context) {
      return SizedBox(
        height: 200,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                'Create a new entry',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  OutlinedButton.icon(
                    icon: const Icon(Icons.visibility_off),
                    label: const Text('Blind taste'),
                    style: const ButtonStyle().copyWith(
                      minimumSize: MaterialStateProperty.all(const Size(
                          180, 40)), // Adjust the width and height as needed
                    ),
                    onPressed: () => Navigator.pop(context),
                  ),
                  OutlinedButton.icon(
                    icon: const Icon(Icons.center_focus_weak),
                    label: const Text('Scan the bottle'),
                    style: const ButtonStyle().copyWith(
                      minimumSize: MaterialStateProperty.all(const Size(
                          180, 40)), // Adjust the width and height as needed
                    ),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              )
            ],
          ),
        ),
      );
    },
  );
}

class ListingScreen extends StatefulWidget {
  const ListingScreen({super.key});

  @override
  State<ListingScreen> createState() => _ListingScreenState();
}

class _ListingScreenState extends State<ListingScreen> {
  String _listingView = listingView[0];
  String _listingFilter = filter[0];
  List<VinologueEntry> _entriesData = entriesByDate;

  void _toggleListingView() {
    setState(() {
      _listingView =
          _listingView == listingView[0] ? listingView[1] : listingView[0];
    });
  }

  void _changeListingFilter(int idx) {
    String prevFilter = _listingFilter;

    setState(() {
      _listingFilter = filter[idx];
      if (_listingFilter == filter[0]) {
        _entriesData = _listingFilter == prevFilter
            ? _entriesData.reversed.toList()
            : entriesByDate;
      }
      if (_listingFilter == filter[1]) {
        _entriesData = _listingFilter == prevFilter
            ? _entriesData.reversed.toList()
            : entriesByRating;
      }
      if (_listingFilter == filter[2]) {
        _entriesData = _listingFilter == prevFilter
            ? _entriesData.reversed.toList()
            : entriesByGrapeVarietal;
      }
    });
  }

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vinologue'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            tooltip: 'Add a new entry',
            onPressed: () {
              showNewEntryBottomSheet(context);
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            ListingFilter(
              listingView: _listingView,
              onListingViewToggle: _toggleListingView,
              listingFilter: _listingFilter,
              onListingFilterChange: _changeListingFilter,
            ),
            const SizedBox(height: 30),
            EntriesListing(_entriesData, _listingView),
          ],
        ),
      ),
    );
  }
}
