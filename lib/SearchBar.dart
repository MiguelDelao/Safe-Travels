import 'package:flutter/material.dart';
import 'logic.dart';

class SearchBar extends StatefulWidget {
  final Function(String) onSelect;
  const SearchBar({super.key, required this.onSelect});

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  List<String> countries = [];

  @override
  void initState() {
    super.initState();
    loadCountries().then((value) {
      countries = value.keys.toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Autocomplete<String>(
      optionsBuilder: (TextEditingValue textEditingValue) {
        if (textEditingValue.text == '') {
          return const Iterable<String>.empty();
        }
        return countries.where((String option) {
          return option
              .toLowerCase()
              .contains(textEditingValue.text.toLowerCase());
        });
      },
      onSelected: widget.onSelect,
    );
  }
}
