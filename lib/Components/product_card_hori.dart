import 'package:adornment/Model/product_model.dart';
import 'package:flutter/material.dart';

class ProductCardHori extends StatelessWidget {
  const ProductCardHori({
    Key? key,
    required this.itemIndex,
    required this.product,
    required this.press,
  }) : super(key: key);

  final int itemIndex;
  final Product product;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 160,
      width: 280,
      child: InkWell(
        onTap: press,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 130,
              decoration: BoxDecoration(
                  color:
                      itemIndex.isEven ? Color(0xFF40BAD5) : Color(0xFFFFA41B),
                  borderRadius: BorderRadius.circular(22),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 15),
                        blurRadius: 27,
                        color: Colors.black12)
                  ]),
              child: Container(
                margin: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(22)),
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              bottom: 10,
              child: Hero(
                tag: '${product.id}',
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  height: 160,
                  width: 200,
                  child: Image.asset(
                    product.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
                bottom: 0,
                left: 0,
                child: SizedBox(
                  height: 136,
                  width: size.width - 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Spacer(),
                      Container(
                        padding: EdgeInsets.only(left: 10, right: 90),
                        child: Text(
                          product.title,
                          style: Theme.of(context).textTheme.button,
                        ),
                      ),
                      Spacer(),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 40, vertical: 5),
                        decoration: BoxDecoration(
                            color: Color(0xFFFFA41B),
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(22),
                                topRight: Radius.circular(22))),
                        child: Text(
                          "\$${product.price}",
                          style: Theme.of(context).textTheme.button,
                        ),
                      )
                    ],
                  ),
                )),
            Positioned(
              bottom: 20,
              right: 10,
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 4),
                          color: Colors.grey,
                          blurRadius: 5,
                          spreadRadius: 1)
                    ]),
                child: Icon(
                  Icons.add,
                  color: Color(0xFF00CCFF),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
