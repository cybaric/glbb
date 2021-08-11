import 'package:flutter/material.dart';

class Pembahasan extends StatelessWidget {
  const Pembahasan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue[50],
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.pink,
          onPressed: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back),
        ),
        body: ListView(
          children: [
            Column(
              children: [
                buildText("Pembahasan 1", Colors.red),
                buildCard(Colors.amber, AssetImage("images/ct1.png")),
                SizedBox(
                  height: 40,
                ),
                buildText("Pembahasan 2", Colors.green),
                buildCard(Colors.pink, AssetImage("images/ct2.png")),
                SizedBox(
                  height: 40,
                ),
                buildText("Pembahasan 3", Colors.purple),
                buildCard(Colors.green, AssetImage("images/ct3.png")),
                SizedBox(
                  height: 40,
                ),
                buildText("Pembahasan 4", Colors.blue),
                buildCard(Colors.purple, AssetImage("images/ct4.png")),
                SizedBox(
                  height: 40,
                ),
                buildText("Pembahasan 5", Colors.pink),
                buildCard(Colors.blue, AssetImage("images/ct5.png")),
                SizedBox(
                  height: 40,
                ),
                buildText("Pembahasan 6", Colors.amber),
                buildCard(Colors.brown, AssetImage("images/ct6.png")),
                SizedBox(
                  height: 40,
                ),
                buildText("Pembahasan 7", Colors.greenAccent),
                buildCard(Colors.black, AssetImage("images/ct7.png")),
                SizedBox(
                  height: 400,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Text buildText(String text, Color color) {
    return Text(
      text,
      style:
          TextStyle(fontFamily: "Montez-Regular", color: color, fontSize: 30),
    );
  }

  Container buildCard(Color color, AssetImage assetimage) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.fromLTRB(2, 10, 2, 10),
      child: Image(
        image: assetimage,
      ),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: Colors.black.withOpacity(0.7),
            offset: Offset(3, 5),
            blurRadius: 6),
      ], color: Colors.green, borderRadius: BorderRadius.circular(6)),
    );
  }
}
