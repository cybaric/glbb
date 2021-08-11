import 'package:flutter/material.dart';
import 'package:glbb/view/kalkulator.dart';
import 'package:glbb/view/pembahasan.dart';
import 'package:glbb/view/pengertian.dart';
import 'package:glbb/view/rumus.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MainPage());
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(120),
            child: AppBar(
              backgroundColor: Colors.greenAccent,
              flexibleSpace: Center(
                  child: Column(
                children: [
                  SizedBox(height: 20),
                  Text(
                    "GLBB",
                    style: TextStyle(
                      fontFamily: "Calistoga-Regular",
                      color: Colors.white,
                      fontSize: 50,
                    ),
                  ),
                  Text("Gerak Lurus Berubah Beraturan",
                      style: TextStyle(
                          fontFamily: "WindSong-Regular",
                          color: Colors.black,
                          fontSize: 18)),
                ],
              )),
            ),
          ),
          body: Stack(
            children: [
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                    width: 400,
                    height: 400,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200),
                        color: Colors.purple[100])),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                    width: 300,
                    height: 300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(150),
                        color: Colors.pink[100])),
              ),
              ListView(
                padding: EdgeInsets.all(4),
                children: [
                  SizedBox(height: 20),
                  ElevatedButton.icon(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.resolveWith(
                              (states) => states.any((element) =>
                                      element == MaterialState.disabled)
                                  ? Colors.yellow
                                  : Colors.green),
                          elevation: MaterialStateProperty.all(10)),
                      icon: Container(
                        margin: EdgeInsets.all(2),
                        child: Image(
                          image: AssetImage("images/peng.png"),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                          return Pengertian();
                        }));
                      },
                      label: Text("Pengertian GLBB")),
                  SizedBox(height: 20),
                  ElevatedButton.icon(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.resolveWith(
                              (states) => states.any((element) =>
                                      element == MaterialState.disabled)
                                  ? Colors.yellow
                                  : Colors.green),
                          elevation: MaterialStateProperty.all(10)),
                      icon: Container(
                        margin: EdgeInsets.all(5),
                        child: Image(
                          image: AssetImage("images/rms.png"),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                          return Rumus();
                        }));
                      },
                      label: Text("     Rumus GLBB   ")),
                  SizedBox(height: 20),
                  ElevatedButton.icon(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.resolveWith(
                              (states) => states.any((element) =>
                                      element == MaterialState.disabled)
                                  ? Colors.yellow
                                  : Colors.green),
                          elevation: MaterialStateProperty.all(10)),
                      icon: Container(
                        margin: EdgeInsets.all(5),
                        child: Image(
                          image: AssetImage("images/soal.png"),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                          return Pembahasan();
                        }));
                      },
                      label: Text("Bahas Soal GLBB")),
                  SizedBox(height: 20),
                  ElevatedButton.icon(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.resolveWith(
                              (states) => states.any((element) =>
                                      element == MaterialState.disabled)
                                  ? Colors.yellow
                                  : Colors.green),
                          elevation: MaterialStateProperty.all(10)),
                      icon: Container(
                        margin: EdgeInsets.all(5),
                        child: Image(
                          image: AssetImage("images/alat.png"),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                          return Kalkulator();
                        }));
                      },
                      label: Text(" kalkulator GLBB ")),
                  SizedBox(height: 100),
                ],
              ),
            ],
          )),
    );
  }
}
