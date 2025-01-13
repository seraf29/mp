import 'package:flutter/material.dart';

class List_view_Vertical extends StatelessWidget {
  const List_view_Vertical({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "KOMIK Mistery",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Color.fromARGB(255, 176, 141, 226)
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6UyiRyyXO5QqPwSH3EDmfBZzY1ejdHt1EpA&s',
                width: 40,
                height: 40,
                fit: BoxFit.cover,
              ),
              title: Text("KOMIK vol-1"),
            ),
            ListTile(
              leading: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6UyiRyyXO5QqPwSH3EDmfBZzY1ejdHt1EpA&s',
                width: 40,
                height: 40,
                fit: BoxFit.cover,
              ),
              title: Text("KOMIK vol-2"),
            ),
            ListTile(
              leading: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6UyiRyyXO5QqPwSH3EDmfBZzY1ejdHt1EpA&s',
                width: 40,
                height: 40,
                fit: BoxFit.cover,
              ),
              title: Text("KOMIK vol-3"),
            ),
            ListTile(
              leading: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6UyiRyyXO5QqPwSH3EDmfBZzY1ejdHt1EpA&s',
                width: 40,
                height: 40,
                fit: BoxFit.cover,
              ),
              title: Text("KOMIK vol-4"),
            ),
            ListTile(
              leading: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6UyiRyyXO5QqPwSH3EDmfBZzY1ejdHt1EpA&s',
                width: 40,
                height: 40,
                fit: BoxFit.cover,
              ),
              title: Text("KOMIK vol-5"),
            ),
          ],
        ));
  }
}