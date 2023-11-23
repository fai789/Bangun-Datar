import 'package:get/get.dart';

class belahketupatControler extends GetxController{
  int sisi = 0;
  int d1 = 0;
  int d2 = 0;
  final hasil ="".obs;

  void hitungKeliling(){
    int hitung = sisi * 4;
    hasil.value = " Perhitungan Keliling dari Belah Ketupat dengan sisi $sisi adalah $hitung";
  }
  void hitungLuas(){
    int hitung = (d1 * d2 / 2) as int;
    hasil.value = " Perhitungan Luas Belah Ketupat dengan Diagonal 1 = $d1 dan Diagonal 2 = $d2 adalah $hitung";
  }
}