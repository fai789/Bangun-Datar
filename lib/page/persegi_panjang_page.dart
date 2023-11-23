import 'dart:ui';

import 'package:bangun_datar_kelas_c_1/controler/persegi_controler.dart';
import 'package:bangun_datar_kelas_c_1/controler/persegi_panjang_controler.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class persegi_panjang extends StatelessWidget {
  persegi_panjang({Key? key}) : super(key: key);
  final Persegi_panjangControler _persegi_panjangControler = Get.put(Persegi_panjangControler());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Persegi Panjang",
          style: TextStyle(color: Color(0xFFFFFFFF)),
        ),
        backgroundColor: Colors.orange.shade300,
      ),
      body: ListView(
        children: [
          Column(children: [
            Image.asset(
              "Assets/persegi panjang.png",
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text("Persegi Panjang"),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(10)),
              child: Text(
                  "Persegi panjang (bahasa Inggris: rectangle) adalah bangun datar dua dimensi yang dibentuk oleh"
                      " dua pasang sisi yang masing-masing sama panjang dan sejajar"
                      " dengan pasangannya, dan memiliki empat buah sudut yang kesemuanya adalah sudut siku-siku."),
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
                      _persegi_panjangControler.sisi = int.parse(value);
                    },
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      labelText: "Sisi",
                      hintText: "Masukkan Sisi",
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
                      _persegi_panjangControler.panjang = int.parse(value);
                    },
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      labelText: "Panjang",
                      hintText: "Masukkan Panjang",
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
                            _persegi_panjangControler.hitungLuas();
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black,
                          ),
                          child: Text("Hitung Luas")),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          _persegi_panjangControler.hitungKeliling();
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
                  Obx(() => Text(_persegi_panjangControler.hasil.value),),
                  Text("\n\nTerima Kasih"),
                  Text("==============================")
                ],
              ))
        ],
      ),
    );
  }
}
