import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back,
          size: 30,
          color: Colors.black,
        ),
        actions: [
          Icon(
            Icons.search,
            size: 30,
            color: Colors.black,
          ),
          SizedBox(
            width: 7,
          ),
          Icon(
            Icons.shopping_cart_outlined,
            size: 30,
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
