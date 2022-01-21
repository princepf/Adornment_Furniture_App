import 'package:adornment/Components/product_card.dart';
import 'package:adornment/Model/product_model.dart';
import 'package:adornment/detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'Components/catogary_list.dart';
import 'Components/search_bar.dart';
import 'notification_page.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Scaffold(
        backgroundColor: Color(0xFF035AA6),
        appBar: AppBar(
          backgroundColor: Color(0xFF035AA6),
          elevation: 0,
          title: Text("Adornment"),
          actions: <Widget>[
            IconButton(
              icon: SvgPicture.asset(
                "assets/icons/notification.svg",
                height: 20,
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NotificationPage()));
              },
            ),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        body: Column(
          children: [
            //search
            SearchBar(onChanged: (value) {}),
            //catogary list
            CatogaryList(),
            SizedBox(
              height: 20,
            ),
            Expanded(
                child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 70),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                ),
                ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (context, index) => ProductCard(
                    itemIndex: index,
                    product: products[index],
                    press: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailScreen(
                                    product: products[index],
                                  )));
                    },
                  ),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
