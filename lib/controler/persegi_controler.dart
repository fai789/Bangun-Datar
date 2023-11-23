import 'package:get/get.dart';

class PersegiControler extends GetxController{
  int sisi = 0;
  final hasil ="".obs;

  void hitungLuas(){
    int hitung = sisi * sisi;
    hasil.value = " Perhitungan Luas dari sisi $sisi adalah $hitung";
  }
  void hitungKeliling(){
    int hitung = sisi * 4;
    hasil.value = " Perhitungan Keliling dari sisi $sisi adalah $hitung";
  }
}