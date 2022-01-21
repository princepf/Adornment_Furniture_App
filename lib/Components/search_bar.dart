import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  SearchBar({Key? key, required this.onChanged}) : super(key: key);
  final ValueChanged onChanged;

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.7),
            borderRadius: BorderRadius.circular(15)),
        child: TextFormField(
          decoration: InputDecoration(
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            icon: Icon(
              Icons.search_rounded,
              color: Colors.white,
              size: 30,
            ),
            hintText: 'search',
            hintStyle: TextStyle(fontSize: 18, color: Colors.white),
          ),
        ));
  }
}
