import 'package:flutter/material.dart';
import 'main.dart';

class CartPage extends StatelessWidget {
  List<String> cart = [];
  List<bool> cartBool = [];
  List<Widget> funct(int index) {
    List<Widget> _Widgets = [];
    if (cart.length != 0) {
      if (cart[index] != "") {
        var x = cart[index];
        _Widgets.add(Image.asset("images/$x.jpg"));
        _Widgets.add(Text(x));
        _Widgets.add(Container(
          width: 200,
          alignment: Alignment.centerRight,
          child: ElevatedButton(
              onPressed: () => {cart[index] = ""},
              child: Text("remove from cart")),
        ));
      }
    }
    return _Widgets;
  }

  String currentText = "";
  CartPage({required this.cart, required this.cartBool});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      ElevatedButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back_ios_new),
      ),
      if (cartBool[0] == true) ...[
        SizedBox(
          width: 510,
          height: 50,
          child: Row(
            children: funct(0),
          ),
        )
      ],
      if (cartBool[1] == true) ...[
        SizedBox(width: 510, height: 50, child: Row(children: funct(1))),
        if (cartBool[2] == true) ...[
          SizedBox(
            width: 510,
            height: 50,
            child: Row(children: funct(2)),
          )
        ],
        if (cartBool[3] == true) ...[
          SizedBox(
            width: 510,
            height: 50,
            child: Row(children: funct(3)),
          )
        ],
        if (cartBool[4] == true) ...[
          SizedBox(
            width: 510,
            height: 50,
            child: Row(children: funct(4)),
          )
        ],
        if (cartBool[5] == true) ...[
          SizedBox(
            width: 510,
            height: 50,
            child: Row(children: funct(5)),
          )
        ],
        if (cartBool[6] == true) ...[
          SizedBox(
            width: 510,
            height: 50,
            child: Row(children: funct(6)),
          )
        ],
        if (cartBool[7] == true) ...[
          SizedBox(
            width: 510,
            height: 50,
            child: Row(children: funct(7)),
          )
        ],
        if (cartBool[8] == true) ...[
          SizedBox(
            width: 510,
            height: 50,
            child: Row(children: funct(8)),
          )
        ]
      ],
    ]));
  }
}
