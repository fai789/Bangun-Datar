import 'package:get/get.dart';

class SegitigaControler extends GetxController{
  int sisi = 0;
  int alas = 0;
  int tinggi = 0;
  final hasil ="".obs;

  void hitungKeliling(){
    int hitung = sisi * 3;
    hasil.value = " Perhitungan Keliling dari Segitiga dengan sisi $sisi adalah $hitung";
  }
  void hitungLuas(){
    int hitung = (alas * tinggi / 2) as int;
    hasil.value = " Perhitungan Luas Segitiga dengan alas $alas dan tinggi $tinggi adalah $hitung";
  }
}