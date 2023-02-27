import 'package:flutter/material.dart';

import 'modal2.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    Data2 d2 = ModalRoute.of(context)!.settings.arguments as Data2;
    return SafeArea(
      child: Scaffold(
appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                height: 500,
                width: double.infinity,
                child: Image.asset("${d2.images}"),
              ),
              Center(
                child: Column(
                  children: [
                    Text("${d2.nam}"),
                    Text("\$ ${d2.prices}"),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
