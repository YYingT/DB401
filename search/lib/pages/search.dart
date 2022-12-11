import 'package:flutter/material.dart';

import '../models/country.dart';

class Search extends StatefulWidget {
  final Continent continent;

  const Search({required this.continent, super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  late Country country;
  late List<ListTile> suggestion;

  @override
  void initState() {
    country = Country(widget.continent);
    suggestion = country.suggest('');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
      ),
      // ข้อ 4.
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField (keyboardType: TextInputType.name,
            )
            // ข้อ 5. และ ข้อ 6.
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: ((context, index) => 
              const ListTile(
                title: Text(''),
              )))// ข้อ 7.
          )
        ],
      ),
    );
  }
}