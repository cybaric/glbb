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
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.purple[200],
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.7),
                              offset: Offset(0, -5),
                              blurRadius: 6)
                        ]),
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
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: Colors.purple,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.5),
                                      offset: Offset(3, -5),
                                      blurRadius: 6)
                                ]),
                            child: Image(
                              image: AssetImage("images/rms1.png"),
                              fit: BoxFit.fill,
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            margin: EdgeInsets.all(2),
                            padding: EdgeInsets.all(6),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.greenAccent,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.7),
                                      offset: Offset(3, -5),
                                      blurRadius: 6)
                                ]),
                            child: Center(
                              child: Text(
                                  "Sesuaikan pengunaan rumus dari data yang diketahui pada soal,\nmisalnya ingin mencari t jika diketahui vt, v0, dan a,\nkita dapat menggunakan rumus no 1.  "),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.amber,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.7),
                                      offset: Offset(0, -5),
                                      blurRadius: 6)
                                ]),
                            child: Text(
                              "Note :\njika GLBB diperlambat maka percepatannya (a) negatif",
                            ),
                          ),
                          SizedBox(
                            height: 300,
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
