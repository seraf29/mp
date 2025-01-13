import 'package:flutter/material.dart';

class List_view_horizontal extends StatelessWidget {
  const List_view_horizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "KOMIK Adventure",
            style: TextStyle(color: Colors.white),
          ),
           backgroundColor: Color.fromARGB(255, 176, 141, 226),
      ),
          body: Column(
        children: [
          SizedBox(height: 16), // Add space between AppBar and ListView
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  width: 100, // Set a fixed width for each item
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start, // Align content to the top
                    children: [
                      Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6UyiRyyXO5QqPwSH3EDmfBZzY1ejdHt1EpA&s',
                  width: 40,
                  height: 40,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 8), // Add some space between image and text
                Text("KOMIK vol-1"),
              ],
            ),
          ),
          Container(
            width: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6UyiRyyXO5QqPwSH3EDmfBZzY1ejdHt1EpA&s',
                  width: 40,
                  height: 40,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 8),
                Text("KOMIK vol-2"),
              ],
            ),
          ),
          Container(
            width: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6UyiRyyXO5QqPwSH3EDmfBZzY1ejdHt1EpA&s',
                  width: 40,
                  height: 40,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 8),
                Text("KOMIK vol-3"),
              ],
            ),
          ),
          Container(
            width: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6UyiRyyXO5QqPwSH3EDmfBZzY1ejdHt1EpA&s',
                  width: 40,
                  height: 40,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 8),
                Text("KOMIK vol-4"),
              ],
            ),
          ),
          Container(
            width: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6UyiRyyXO5QqPwSH3EDmfBZzY1ejdHt1EpA&s',
                  width: 40,
                  height: 40,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 8),
                Text("KOMIK vol-5"),
               ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
