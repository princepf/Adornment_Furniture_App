import 'package:adornment/Components/product_image.dart';
import 'package:adornment/Model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'color_dot.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      bottom: false,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Color(0xFFF1EFF1),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Product Image
                  Center(
                    child: Hero(
                      tag: '${product.id}',
                      child: ProductPoster(
                        size: size,
                        images: product.image,
                      ),
                    ),
                  ),

                  //Color Dot
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ColorDot(
                          fillcolor: Color(0xFF80989A),
                          isSelected: true,
                        ),
                        ColorDot(
                          fillcolor: Color(0xFFFF5200),
                        ),
                        ColorDot(
                          fillcolor: Color(0xFF035AA6),
                        ),
                      ],
                    ),
                  ),

                  //Description
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      product.title,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                  Text(
                    "\$${product.price}",
                    style: TextStyle(fontSize: 18, color: Color(0xFFFFA41B)),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      product.description,
                      style: TextStyle(color: Color(0xFF747474)),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                  color: Color(0xFFFCBF1E),
                  borderRadius: BorderRadius.circular(30)),
              child: Row(
                children: [
                  SvgPicture.asset(
                    "assets/icons/chat.svg",
                    height: 18,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "chat",
                    style: TextStyle(color: Colors.white),
                  ),
                  Spacer(),
                  FlatButton.icon(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      "assets/icons/shopping-bag.svg",
                      height: 18,
                    ),
                    label: Text(
                      "Add to Cart",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
