import 'package:error/models/product.dart';
import 'package:error/models/product_type.dart';
import 'package:error/models/store.dart';
import 'package:flutter/material.dart';

class ProductWidget extends StatefulWidget {
  @override
  _ProductWidgetState createState() {
    return _ProductWidgetState();
  }
}

class _ProductWidgetState extends State<ProductWidget> {
  Size? size;

  @override
  Widget build(BuildContext context) {
    if (size == null) {
      size = MediaQuery.of(context).size;
    }
    Product t = Product(
        actived: true,
        description: "description",
        image: "assets/images/tra_chanh.jpg",
        imageContentType: "",
        name: "Trà chanh chém gió Hà Nội",
        price: 30000,
        store: Store(),
        types: ProductType(id: 1, name: "name"));
    // if(widget.width == 0){
    //   widget.width = MediaQuery.of(context).width;
    // }
    return Container(
      padding: EdgeInsets.only(
        top: 8,
      ),
      width: size!.width * 0.3,
      // height: size.height * 0.3,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.zero,
            width: size!.width * 0.3 * 0.8,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
            child: Image.asset(
              t.image,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            t.name,
            maxLines: 1,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w300,
            ),
          ),
          Container(
            child: Text(
              "${t.price.toString()} d",
              textAlign: TextAlign.center,
              maxLines: 1,
              style:
                  TextStyle(fontWeight: FontWeight.w800, color: Colors.white),
            ),
            width: size!.width * 0.3 * 0.8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.blueAccent,
            ),
          ),
        ],
      ),
    );
  }
}

main(List<String> args) {
  runApp(MaterialApp(
    home: SafeArea(
      child: ProductWidget(),
    ),
  ));
}
