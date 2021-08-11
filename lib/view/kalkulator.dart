import 'package:flutter/material.dart';
import 'package:glbb/view/kalkulator1.dart';
import 'package:glbb/view/kalkulator3.dart';

class Kalkulator extends StatelessWidget {
  const Kalkulator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.purpleAccent,
            onPressed: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
            )),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(200),
          child: AppBar(
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.pink, Colors.purple])),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: Text(
                    "Kalkulator GLBB",
                    style: TextStyle(
                      fontFamily: "Montez-Regular",
                      fontSize: 40,
                      color: Colors.white
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Kalkulator1();
                  }));
                },
                child: Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: Colors.lime),
                    child: Image(image: AssetImage("images/satu.png"))),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Kalkulator3();
                    }));
                  },
                  child: Container(
                      margin: EdgeInsets.all(5),
                      child: Image(image: AssetImage("images/tiga.png"))))
            ],
          ),
        ),
      ),
    );
  }
}
