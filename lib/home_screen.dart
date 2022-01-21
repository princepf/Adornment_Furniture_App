import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF035AA6),
      appBar: AppBar(
        backgroundColor: Color(0xFF035AA6),
        elevation: 0,
        title: Text("Dashbord"),
        actions: <Widget>[
          IconButton(
            icon: SvgPicture.asset(
              "assets/icons/notification.svg",
              height: 20,
            ),
            onPressed: () {},
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: ListView(
        children: [
          //search
          Container(
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
              ))
        ],
      ),
    );
  }
}
