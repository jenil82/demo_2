import 'package:demo_2/modal.dart';
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
