import 'package:flutter/material.dart';
import 'package:glbb/model/kalku3.dart';

class Kalkulator3 extends StatefulWidget {
  const Kalkulator3({Key? key}) : super(key: key);

  @override
  _Kalkulator3State createState() => _Kalkulator3State();
}

class _Kalkulator3State extends State<Kalkulator3> {
  TextEditingController controllerS = TextEditingController();
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
                            height: 10,
                          ),
                          Image(
                            image: AssetImage("images/tiga.png"),
                          ),
                          textView(
                              "isi 3 data yang diketahui", 24, Colors.green),
                          textView(
                              "kosongkan yang ingin dicari", 20, Colors.blue),
                          textView("gunakan titik sebagai koma (contoh 0.25)",
                              16, Colors.purple),
                        ],
                      ),
                    ),
                  ),
                  rowInput(controllerS, "     jarak tempuh : ", " m/s "),
                  rowInput(controllerV0, " kecepatan awal : ", " m/s "),
                  rowInput(controllerA, "          percepatan : ", "m/s^2"),
                  rowInput(controllerT, "  selang waktu : ", "  s  "),
                  SizedBox(
                    height: 50,
                  ),
                  Text("$text", style: TextStyle(fontSize: 18),),
                  SizedBox(
                    height: 50,
                  ),
                  ElevatedButton(onPressed: onPres, child: Text("Hitung")),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void onPres() {
    double es = Kalku3().cek(controllerS.text);
    double v0 = Kalku3().cek(controllerV0.text);
    double a = Kalku3().cek(controllerA.text);
    double t = Kalku3().cek(controllerT.text);
    List<double> x = [es, v0, a, t];
    if (x.length == 4) {
      text = "isi 3 saja";
    }
    if (controllerS.text == "") {
      if (Kalku3().karakter(v0, t, a)) {
        text = "input tak valid / tak lengkap";
      } else
        text = "Jarak =  = " + Kalku3().jarak(v0, t, a).toString() + " m";
    } else if (controllerV0.text == "") {
      if (Kalku3().karakter(es, a, t)) {
        text = "input tak valid / tak lengkap";
      } else
        text =
            "kecepatan awal = " + Kalku3().vnol(es, a, t).toString() + " m/s";
    } else if (controllerA.text == "") {
      if (Kalku3().karakter(es, v0, t)) {
        text = "input tak valid / tak lengkap";
      } else
        text = "percepatan = " +
            Kalku3().percep(es, v0, t).toString() +
            " m/s^2";
    } else if (controllerT.text == "") {
      if (Kalku3().karakter(v0, a, es)) {
        text = "input tak valid / tak lengkap";
      } else {
        if (Kalku3().waktu(v0, a, es) < 0) {
          text = " t minus (mungkin salah soal)";
        } else
          text =
              "selang waktu = " + Kalku3().waktu(v0, a, es).toString() + " s";
      }
    }
    setState(() {});
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

  Text textView(String str, double fz, Color c) {
    return Text(
      str,
      style: TextStyle(fontFamily: "Montez-Regular", fontSize: fz, color: c),
    );
  }
}
