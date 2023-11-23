import 'package:get/get.dart';

class Persegi_panjangControler extends GetxController{
  int sisi = 0;
  int panjang = 0;
  final hasil ="".obs;

  void hitungLuas(){
    int hitung = sisi * panjang;
    hasil.value = " Perhitungan Luas dari Persegi Panjang dengan sisi $sisi dan panjang $panjang adalah $hitung";
  }
  void hitungKeliling(){
    int hitung = sisi + sisi + panjang + panjang;
    hasil.value = " Perhitungan Keliling dari Persegi Panjang dengan sisi $sisi dan panjang $panjang adalah $hitung";
  }
}