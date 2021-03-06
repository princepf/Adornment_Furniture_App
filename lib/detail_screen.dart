import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'Model/product_model.dart';
import 'components/body.dart';

class DetailScreen extends StatelessWidget {
  final Product product;

  const DetailScreen({Key? key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF11A0EB),
      appBar: buildAppBar(context),
      body: Body(
        product: product,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
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
      leading: IconButton(
        padding: EdgeInsets.only(left: 20),
        icon: SvgPicture.asset("assets/icons/back.svg"),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      centerTitle: false,
      title: Text(
        'Details'.toUpperCase(),
        style: Theme.of(context).textTheme.bodyText2,
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset('assets/icons/cart_with_item.svg'),
          onPressed: () {},
        ),
      ],
    );
  }
}
