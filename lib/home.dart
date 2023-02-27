import 'package:demo_2/modal.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List imgList = ["assets/images/1.jpg", "assets/images/2.jpg", "assets/images/2.jpg"];
  List nameList = ["Dog", "Horse","man"];
  List priceList = ["20000", "100000","000000"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black12,
        body: GridView.builder(
          itemCount: imgList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index) {
            return UI(imgList[index], nameList[index], priceList[index]);
          },
        ),
      ),
    );
  }

  Widget UI(String img, String na, String pr) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: 300,
        width: 150,
        color: Colors.white,
        child: Column(
          children: [
            Image.asset(
              "${img}",
              height: 100,
              width: 100,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("${na}"),
                Text("\$ ${pr}"),
                IconButton(
                  onPressed: () {
                    setState(() {
                      Data d1 = Data(image: img, name: na, price: pr);
                      Navigator.pushNamed(context, 'detail', arguments: d1);
                    });
                  },
                  icon: Icon(Icons.forward),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
