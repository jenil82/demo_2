import 'package:demo_2/modal.dart';
import 'package:demo_2/modal2.dart';
import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    Data d1 = ModalRoute.of(context)!.settings.arguments as Data;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                height: 500,
                width: double.infinity,
                child: Image.asset("${d1.image}"),
              ),
              Center(
                child: Column(
                  children: [
                    Text("${d1.name}"),
                    Text("\$ ${d1.price}"),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          Data2 d2 = Data2(
                              images: d1.image, nam: d1.name, prices: d1.price);
                          Navigator.pushNamed(context, 'cart', arguments: d2);
                        });
                      },
                      child: Text("Add to cart"),
                    ),
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
