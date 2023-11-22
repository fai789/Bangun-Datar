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
        backgroundColor: Colors.green,
      ),
      body: ListView(
        children: [
          Row(
            children: [
              Column(
                children: [
                  CustomMenu(tittle: "Persegi", imageAssets: "assets/persegi.png"),
                  CustomMenu(tittle: "Persegi", imageAssets: "assets/persegi.png"),
                ],
              ),
              Column(
                children: [
                  CustomMenu(tittle: "Persegi", imageAssets: "assets/persegi.png"),
                  CustomMenu(tittle: "Persegi", imageAssets: "assets/persegi.png"),
                ],
              ),
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
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 90),
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 90),
        decoration: BoxDecoration(color: Colors.green),
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