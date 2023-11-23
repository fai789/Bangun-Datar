import 'dart:ui';

import 'package:bangun_datar_kelas_c_1/controler/persegi_controler.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class persegi extends StatelessWidget {
  persegi({Key? key}) : super(key: key);
  final PersegiControler _persegiControler = Get.put(PersegiControler());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Persegi",
          style: TextStyle(color: Color(0xFFFFFFFF)),
        ),
        backgroundColor: Colors.orange.shade300,
      ),
      body: ListView(
        children: [
          Column(children: [
            Image.asset(
              "Assets/persegi.png",
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text("Persegi"),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(10)),
              child: Text(
                  "Persegi adalah bangun datar segi empat yang memiliki empat sisi dengan ukuran yang sama panjang."
                  " Artinya, persegi berbeda dengan persegi panjang yang ukuran kedua sisinya berbeda."
                  " Pun begitu dengan layang-layang dan trapesium"),
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
                      _persegiControler.sisi = int.parse(value);
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 17, vertical: 16),
                      child: ElevatedButton(
                          onPressed: () {
                            _persegiControler.hitungLuas();
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black,
                          ),
                          child: Text("Hitung Luas")),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          _persegiControler.hitungKeliling();
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
                  Obx(() => Text(_persegiControler.hasil.value),),
                  Text("\n\nTerima Kasih"),
                  Text("==============================")
                ],
              ))
        ],
      ),
    );
  }
}
