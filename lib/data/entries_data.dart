import 'package:vinologue/models/vinologue_entry.dart';

List<VinologueEntry> entriesData = [
  VinologueEntry(
    vintage: 2020,
    wineName: '2020 Morgan Winery Twelve Clones Pinot Noir',
    region: 'Santa Lucia Highlands, USA',
    grapeVarietal: 'Pinot Noir',
    userRating: 4.0,
    entryDate: DateTime(2022, 6, 21, 13, 45, 0, 600),
  ),
  VinologueEntry(
    vintage: 2019,
    wineName: '2019 Example Winery Merlot Reserve',
    region: 'Napa Valley, USA',
    grapeVarietal: 'Merlot',
    userRating: 4.5,
    entryDate: DateTime(2022, 8, 3, 15, 0, 0, 0),
  ),
  VinologueEntry(
    vintage: 2018,
    wineName: '2018 Classic Vineyards Cabernet Sauvignon',
    region: 'Sonoma County, USA',
    grapeVarietal: 'Cabernet Sauvignon',
    userRating: 3.5,
    entryDate: DateTime(2022, 8, 4, 12, 30, 0, 300),
  ),
  VinologueEntry(
    vintage: 2017,
    wineName: '2017 Estate Winery Chardonnay',
    region: 'Monterey County, USA',
    grapeVarietal: 'Chardonnay',
    userRating: 4.0,
    entryDate: DateTime(2022, 7, 15, 18, 20, 0, 800),
  ),
  VinologueEntry(
    vintage: 2016,
    wineName: '2016 Grand Reserve Syrah',
    region: 'Paso Robles, USA',
    grapeVarietal: 'Syrah',
    userRating: 2.5,
    entryDate: DateTime(2022, 9, 10, 10, 0, 0, 500),
  ),
  VinologueEntry(
    vintage: 2015,
    wineName: '2015 Mountain Vineyards Zinfandel',
    region: 'Amador County, USA',
    grapeVarietal: 'Zinfandel',
    userRating: 1.0,
    entryDate: DateTime(2022, 9, 15, 14, 45, 0, 200),
  ),
  VinologueEntry(
    vintage: 2014,
    wineName: '2014 Reserve Cellars Malbec',
    region: 'Mendoza, Argentina',
    grapeVarietal: 'Malbec',
    userRating: 4.0,
    entryDate: DateTime(2022, 10, 5, 16, 30, 0, 400),
  ),
  VinologueEntry(
    vintage: 2013,
    wineName: '2013 Heritage Estate Châteauneuf-du-Pape',
    region: 'Rhône Valley, France',
    grapeVarietal: 'Grenache, Syrah, Mourvèdre',
    userRating: 5.0,
    entryDate: DateTime(2022, 10, 12, 20, 15, 0, 700),
  ),
];

List<VinologueEntry> get entriesByDate {
  List<VinologueEntry> sortedList = List.from(entriesData);
  sortedList.sort((a, b) => a.entryDate.compareTo(b.entryDate));
  return sortedList;
}

List<VinologueEntry> get entriesByRating {
  List<VinologueEntry> sortedList = List.from(entriesData);
  sortedList.sort((a, b) => b.userRating.compareTo(a.userRating));
  return sortedList;
}

List<VinologueEntry> get entriesByGrapeVarietal {
  List<VinologueEntry> sortedList = List.from(entriesData);
  sortedList.sort((a, b) => a.grapeVarietal.compareTo(b.grapeVarietal));
  return sortedList;
}
