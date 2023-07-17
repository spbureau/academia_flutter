import 'package:flutter/material.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({super.key});

  @override
  State<DiscoverPage> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  @override
  Widget build(BuildContext context) {
    return const SearchPage();
  }
}

// SearchPage class and widget
class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController searchTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: TextField(
          decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              suffixIconColor: Colors.black,
              border: const UnderlineInputBorder(
                  //borderRadius: BorderRadius.all(500),
                  ),
              // label: Text("Search by name"),
              hintText: "Search by name or topic",
              suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      searchTextController.clear();
                      // not working yet
                    });
                  },
                  icon: const Icon(Icons.cancel))),
          controller: searchTextController,
        ),
      ),
    );
  }
}
