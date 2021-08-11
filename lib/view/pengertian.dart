import 'package:flutter/material.dart';

class Pengertian extends StatelessWidget {
  const Pengertian({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    double p = h > w ? w : h;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.pink,
          onPressed: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back),
        ),
        appBar: AppBar(
          title: Center(
              child: Text("Pengertian GLBB",
                  style:
                      TextStyle(fontFamily: "Montez-Regular", fontSize: 30))),
        ),
        body: ListView(
          padding: EdgeInsets.all(10),
          children: [
            Column(
              children: [
                Text(
                  "Definisi :",
                  style: TextStyle(fontFamily: "Montez-Regular",fontSize: 20,color: Colors.red),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Gerak Lurus Berubah Beraturan Adalah Gerak Suatu Benda Pada Lintasan Lurus Dengan Percepatan Konstan (tetap).",
                  style: TextStyle(fontWeight: FontWeight.w800),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Pada GLBB Kecepatan Benda Berubah Setiap Waktu, Sedangkan percepatannya (perubahan kecepatan) adalah tetap. Ada dua jenis GLBB yaitu,\nGLBB dipercepat (kecepatan benda akhir lebih besar dari mulai), dan GLBB diperlambat (kecepatan benda akhir kurang dari kecepatan mula-mula)",
                  style: TextStyle(color: Colors.purple),
                ),
                SizedBox(
                  height: 50,
                ),
                Text("Contoh :",
                style: TextStyle(fontFamily: "Montez-Regular",fontSize: 20,color: Colors.green)),
                SizedBox(
                  height: 10,
                ),
                Text(
                    "1. GLBB dipercepat\nGerak Benda Yang Jatuh Bebas(Gerak Jatuh Bebas), mula-mula benda diam lalu kecepatannya bertambah, sedangkan percepatan gravitasinya tetap.",
                    style: TextStyle(color: Colors.green)),
                SizedBox(
                  height: 10,
                ),
                Text(
                    "2. BLBB diperlambat\nGerak Benda Yang Dilempar Lurus Ke Atas, kecepatannya berkurang hingga berhenti di titik tertinggi, sedangkan percepatannya tetap yaitu percepatan gravitasi.",
                    style: TextStyle(color: Colors.green)),
                SizedBox(height: 50),
                Text(
                    "pada contoh 1 glbb di percepat karena arah gerak benda (kebawah) searah dengan percepatannya (gravitasi arahnya ke bawah)"),
                SizedBox(height: 10),
                Text(
                    "pada contoh 2 glbb di perlambat karena arah gerak benda (keatas) berlawanan dengan percepatan (gravitasi arahnya ke bawah)"),
                SizedBox(
                  height: 50,
                ),
                Container(
                  width: p - 80,
                  height: p - 120,
                  child: Image(
                    image: AssetImage("images/gv.png"),
                    fit: BoxFit.fill,
                  ),
                ),
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
}
