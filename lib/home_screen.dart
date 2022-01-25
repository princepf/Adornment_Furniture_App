import 'package:adornment/Components/product_card.dart';
import 'package:adornment/Model/product_model.dart';
import 'package:adornment/detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'Components/catogary_list.dart';
import 'Components/product_card_hori.dart';
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
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    const Color(0xFF3366FF),
                    const Color(0xFF00CCFF),
                  ],
                  begin: const FractionalOffset(0.0, 0.0),
                  end: const FractionalOffset(1.0, 0.0),
                  stops: [0.0, 1.0],
                  tileMode: TileMode.clamp),
            ),
          ),
          elevation: 0,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Furniture Shop"),
              Text(
                "Get unique furniture for your home",
                style: TextStyle(color: Colors.grey[300], fontSize: 15),
              ),
            ],
          ),
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
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              const Color(0xFF3366FF),
              const Color(0xFF00CCFF),
            ],
          )),
          child: Column(
            children: [
              //search
              SearchBar(onChanged: (value) {}),

              //catogary list

              CatogaryList(),

              //product horizontal
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Trending Furniture",
                        style: TextStyle(color: Colors.white, fontSize: 20)),
                    FlatButton(
                      onPressed: () {},
                      child: Text("View All",
                          style:
                              TextStyle(color: Colors.blue[900], fontSize: 15)),
                    )
                  ],
                ),
              ),
              Container(
                height: 150,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: products.length,
                  itemBuilder: (context, index) => ProductCardHori(
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
                ),
              ),

              //products verticle
              Container(
                padding: const EdgeInsets.only(top: 0, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Featured Furniture",
                        style: TextStyle(color: Colors.white, fontSize: 20)),
                    FlatButton(
                      onPressed: () {},
                      child: Text("View All",
                          style:
                              TextStyle(color: Colors.blue[900], fontSize: 15)),
                    )
                  ],
                ),
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
      ),
    );
  }
}
