import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<String> data = [
    "HTML3",
    "CSS3",
    "JavaScript",
    "Python",
    "Java",
    "Flutter",
    "Web development",
    "App Development"
  ];
  List<String> searchResults = [];
  String query = '';

  void onQueryChanged(String newQuery) {
    setState(() {
      query = newQuery;
      searchResults = data
          .where((item) => item.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'Search Screen',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
      body: Column(
        children: [
          SearchBar(onQueryChanged: onQueryChanged),
          Expanded(
            child: ListView.builder(
              itemCount: searchResults.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(searchResults[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  final Function(String) onQueryChanged;

  SearchBar({required this.onQueryChanged});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 90,
          width: 430,
          padding: const EdgeInsets.all(16),
          child: TextField(
            onChanged: onQueryChanged,
            decoration: InputDecoration(
              labelText: 'Search',
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
              prefixIcon: Icon(Icons.search),
            ),
          ),
        ),
      ],
    );
  }
}
