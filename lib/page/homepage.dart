import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Home Page",
          style: TextStyle(color: Color(0xFFFFFFFF)),
        ),
        backgroundColor: Colors.green.shade300,
      ),
      body: Column(
        children: [
          Row(
            children: [
                  Expanded(child: CustomMenu(tittle: "Persegi", imageAssets: "assets/persegi.png")),
              Expanded(child: CustomMenu(tittle: "Lingkaran", imageAssets: "assets/lingkaran.png")),
            ],
          ),
          Row(
            children: [
                  Expanded(child: CustomMenu(tittle: "Persegi Panjang", imageAssets: "assets/persegi panjang.png")),
              Expanded(child: CustomMenu(tittle: "Segitiga", imageAssets: "assets/segitiga.png")),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu({
  super.key,
  required this.imageAssets,
  required this.tittle,
  });

  final String imageAssets;
  final String tittle;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 130),
        decoration: BoxDecoration(color: Colors.green,borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Image.asset(
              imageAssets,
              height: 100,
              width: 100,
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                tittle,
                style: TextStyle(color: Color(0xFFFFFFFF)),
              ),
            ),
          ],
        ));
  }
}