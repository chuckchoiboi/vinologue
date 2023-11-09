import 'package:flutter/material.dart';
import 'package:vinologue/widgets/listing/listing_filter.dart';

const listingView = ['stacked', 'row'];
const filter = ['date', 'rating', 'varietal'];

class ListingScreen extends StatefulWidget {
  const ListingScreen({super.key});

  @override
  State<ListingScreen> createState() => _ListingScreenState();
}

class _ListingScreenState extends State<ListingScreen> {
  String _listingView = listingView[0];
  String _listingFilter = filter[0];

  void _toggleListingView() {
    setState(() {
      _listingView =
          _listingView == listingView[0] ? listingView[1] : listingView[0];
    });
  }

  void _changeListingFilter(int idx) {
    setState(() {
      _listingFilter = filter[idx];
    });
  }

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vinologue'),
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
            const Text('listing'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
    );
  }
}
