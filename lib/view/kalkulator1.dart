import 'package:flutter/material.dart';
import 'package:glbb/model/kalku.dart';

class Kalkulator1 extends StatefulWidget {
  const Kalkulator1({Key? key}) : super(key: key);

  @override
  _Kalkulator1State createState() => _Kalkulator1State();
}

class _Kalkulator1State extends State<Kalkulator1> {
  TextEditingController controllerVt = TextEditingController();
  TextEditingController controllerV0 = TextEditingController();
  TextEditingController controllerA = TextEditingController();
  TextEditingController controllerT = TextEditingController();
  String text = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back),
        ),
        body: ListView(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height + 300,
              child: Column(
                children: [
                  Center(
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Image(
                            image: AssetImage("images/satu.png"),
                          ),
                          textView("isi 3 data yang diketahui", 24, Colors.orange),
                          textView("kosongkan yang ingin dicari",20, Colors.green),
                          textView("gunakan titik sebagai koma (contoh 0.25)", 16, Colors.red),
                        ],
                      ),
                    ),
                  ),
                  rowInput(controllerVt, "kecepatan akhir : ", " m/s "),
                  rowInput(controllerV0, " kecepatan awal : ", " m/s "),
                  rowInput(controllerA, "          percepatan : ", "m/s^2"),
                  rowInput(controllerT, "  selang waktu : ", "  s  "),
                  SizedBox(
                    height: 50,
                  ),
                  Text("$text"),
                  SizedBox(
                    height: 50,
                  ),
                  ElevatedButton(onPressed: onPres, child: Text("Hitung")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onPres() {
    double vt = Kalku().cek(controllerVt.text);
    double v0 = Kalku().cek(controllerV0.text);
    double a = Kalku().cek(controllerA.text);
    double t = Kalku().cek(controllerT.text);
    List<double> x = [vt, v0, a, t];
    if (x.length == 4) {
      text = "isi 3 saja";
    }
    if (controllerVt.text == "") {
      if (Kalku().karakter(v0, a, t)) {
        text = "input tak valid / tak lengkap";
      } else
        text = "kecepatan akhir = " + Kalku().vakhir(v0, a, t).toString() + " m/s";
    } else if (controllerV0.text == "") {
      if (Kalku().karakter(vt, a, t)) {
        text = "input tak valid";
      } else
        text = "kecepatan awal = " + Kalku().vawal(vt, a, t).toString() + " m/s";
    } else if (controllerA.text == "") {
      if (Kalku().karakter(v0, vt, t)) {
        text = "input tak valid";
      } else
        text = "percepatan = " + Kalku().percepatan(v0, vt, t).toString() + " m/s^2";
    } else if (controllerT.text == "") {
      if (Kalku().karakter(v0, a, vt)) {
        text = "input tak valid";
      } else {
        if (Kalku().waktu(v0, vt, a) < 0) {
          text = " t minus (mungkin salah soal)";
        } else
          text = "selang waktu = " + Kalku().waktu(v0, vt, a).toString() + " s";
      }
    }
    setState(() {});
  }

  Text textView(String str,double fz , Color c) {
    return Text(
      str,
      style: TextStyle(fontFamily: "Montez-Regular", fontSize: fz, color: c),
    );
  }

  Row rowInput(TextEditingController controllerVt, String s, String satuan) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(s),
        Container(
            width: 50,
            height: 30,
            child: TextField(
              keyboardType: TextInputType.number,
              controller: controllerVt,
            )),
        Text(satuan)
      ],
    );
  }
}
