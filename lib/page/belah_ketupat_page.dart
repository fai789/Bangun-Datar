import 'dart:ui';

import 'package:bangun_datar_kelas_c_1/controler/belah_ketupat_controler.dart';
import 'package:bangun_datar_kelas_c_1/controler/segitiga_controler.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class belahketupat extends StatelessWidget {
  belahketupat({Key? key}) : super(key: key);
  final belahketupatControler _belahketupat = Get.put(belahketupatControler());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Segitiga",
          style: TextStyle(color: Color(0xFFFFFFFF)),
        ),
        backgroundColor: Colors.orange.shade300,
      ),
      body: ListView(
        children: [
          Column(children: [
            Image.asset(
              "Assets/belahketupat.png",
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text("Belah Ketupat"),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(10)),
              child: Text(
                  "Belah ketupat adalah bangun datar dua dimensi yang dibentuk oleh empat rusuk yang sama panjang,"
                      " dan memiliki dua pasang sudut bukan siku-siku yang masing-masing sama besar dengan sudut dihadapannya. 2."
                      " Ada tiga unsur yang membentuk daerah belah ketupat. Yaitu: sisi, sudut, dan titik sudut"),
            ),
          ]),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            decoration: BoxDecoration(
                color: Colors.orange.withOpacity(0.6), borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: TextFormField(
                    onChanged: (value) {
                      _belahketupat.sisi = int.parse(value);
                    },
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      labelText: "Sisi",
                      hintText: "Masukkan Sisi untuk menghitung keliling",
                      hintStyle: TextStyle(color: Colors.grey.shade400),
                      contentPadding:
                      EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.blue),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: TextFormField(
                    onChanged: (value) {
                      _belahketupat.d1 = int.parse(value);
                    },
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      labelText: "Diagonal 1",
                      hintText: "Masukkan Diagonal 1 & Diagonal 2 Untuk Menghitung Luas",
                      hintStyle: TextStyle(color: Colors.grey.shade400),
                      contentPadding:
                      EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.blue),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: TextFormField(
                    onChanged: (value) {
                      _belahketupat.d2 = int.parse(value);
                    },
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      labelText: "Diagonal 2",
                      hintText: "Masukkan Diagonal 1 & Diagonal 2 Untuk Menghitung Luas",
                      hintStyle: TextStyle(color: Colors.grey.shade400),
                      contentPadding:
                      EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.blue),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin:
                      EdgeInsets.symmetric(horizontal: 17, vertical: 16),
                      child: ElevatedButton(
                          onPressed: () {
                            _belahketupat.hitungLuas();
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black,
                          ),
                          child: Text("Hitung Luas")),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          _belahketupat.hitungKeliling();
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue,
                        ),
                        child: Text("Hitung Keliling")),
                  ],
                )
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Hasil\n"),
                  Obx(() => Text(_belahketupat.hasil.value),),
                  Text("\n\nTerima Kasih"),
                  Text("==============================")
                ],
              ))
        ],
      ),
    );
  }
}
