import 'package:flutter/material.dart';

void main() {
  runApp(Aplikasiku());
}

class Aplikasiku extends StatelessWidget {
  // buset ternyata bisa di rename
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("Aplikasi Buat Belajar")),
            body: Column(
              children: [
                KotakProfil(),
                KotakMenuBesar(),
                KontainerMenuKecil(),
              ],
            )));
  }
}

class Kotak extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 100,
        height: 100,
        color: Colors.blue,
        margin: EdgeInsets.all(10),
        child: Center(
          child: Text("Ini Kotak Biasa",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold)),
        ));
  }
}

class KotakProfil extends Kotak {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity, // Biar Widthnya Match Parent
        height: 50,
        color: Colors.blue,
        margin: EdgeInsets.all(10),
        child: Center(
          child: Text("Profile",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold)),
        ));
  }
}

class KotakMenuBesar extends Kotak {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity, // Biar Widthnya Match Parent
        height: 150,
        color: Colors.blue,
        margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
        child: Center(
          child: Text("Menu Besar",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold)),
        ));
  }
}

class KotakMenuKecil extends Kotak {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 0.44, // Width 50%
        height: 150,
        color: Colors.blue,
        margin: EdgeInsets.fromLTRB(0, 0, 10, 10),
        child: Center(
          child: Text("Menu Kecil",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold)),
        ));
  }
}

class KontainerMenuKecil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity, // Biar Widthnya Match Parent
        height: 150,
        margin: EdgeInsets.only(left: 10, right: 10),
        child: Row(
          children: [
            KotakMenuKecil(),
            KotakMenuKecil(),
          ],
        ));
  }
}
