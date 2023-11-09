import 'package:flutter/material.dart';

const List<Widget> icons = <Widget>[
  Text('Date'),
  Text('Rating'),
  Text('Varietal')
];

Map<String, int> filterMap = {
  'date': 0,
  'rating': 1,
  'varietal': 2,
};

class ListingFilter extends StatelessWidget {
  const ListingFilter({
    super.key,
    required this.listingView,
    required this.onListingViewToggle,
    required this.listingFilter,
    required this.onListingFilterChange,
  });

  final String listingView;
  final void Function() onListingViewToggle;
  final String listingFilter;
  final void Function(int) onListingFilterChange;

  @override
  Widget build(context) {
    bool isToggleOn = listingView == 'stacked';
    int filterIdx = filterMap[listingFilter]!;
    List<bool> selectedFilter = List.generate(3, (index) => index == filterIdx);

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Switch(
                  onChanged: (bool value) {
                    onListingViewToggle();
                  },
                  value: isToggleOn),
              const SizedBox(width: 5),
              Text(isToggleOn ? 'Stacked' : 'Row'),
            ],
          ),
          ToggleButtons(
            onPressed: (int index) {
              onListingFilterChange(index);
              for (int i = 0; i < selectedFilter.length; i++) {
                selectedFilter[i] = i == index;
              }
            },
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            isSelected: selectedFilter,
            constraints: const BoxConstraints(
              minHeight: 35.0,
              minWidth: 65.0,
            ),
            children: icons,
          ),
        ],
      ),
    );
  }
}
