import 'package:flutter/material.dart';

class Rumus extends StatelessWidget {
  const Rumus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    double p = h > w ? w : h;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.greenAccent,
            onPressed: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back),
          ),
          body: Stack(
            children: [
              ListView(
                children: [
                  Container(
                      width: p - 40,
                      height: p - 40,
                      child: Image(
                        image: AssetImage("images/glbb.png"),
                      )),
                  SizedBox(height: 20),
                ],
              ),
              ListView(
                children: [
                  SizedBox(
                    height: p - 30,
                  ),
                  Container(
                    width: p,
                    color: Colors.purple[200],
                    child: Center(
                      child: Column(
                        children: [
                          Text(
                            "^ Rumus GLBB",
                            style: TextStyle(
                                fontFamily: "Montez-Regular",
                                color: Colors.white,
                                fontSize: 30),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            width: p - 80,
                            height: p - 120,
                            child: Image(
                              image: AssetImage("images/rms1.png"),
                              fit: BoxFit.fill,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                              "Sesuaikan pengunaan rumus dari data yang diketahui pada soal, misalnya ingin mencari t jika diketahui vt, v0, dan a pada soal, kita dapat menggunakan rumus 1.  "),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Note : jika GLBB diperlambat maka percepatannya (a) negatif",
                            style: TextStyle(color: Colors.brown),
                          ),
                          SizedBox(
                            height: 400,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          )),
    );
  }
}
