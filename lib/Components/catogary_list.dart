import 'package:flutter/material.dart';

class CatogaryList extends StatefulWidget {
  CatogaryList({Key? key}) : super(key: key);

  @override
  _CatogaryListState createState() => _CatogaryListState();
}

class _CatogaryListState extends State<CatogaryList> {
  int selectIndex = 0;
  List catagories = ['All', 'Sofa', 'Park Bench', 'ArmChair', 'Dining Table'];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: catagories.length,
          itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  setState(() {
                    selectIndex = index;
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 10),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: index == selectIndex
                          ? Colors.white.withOpacity(0.5)
                          : Colors.transparent),
                  child: Text(
                    catagories[index],
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )),
    );
  }
}
