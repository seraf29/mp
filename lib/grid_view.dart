import 'package:flutter/material.dart';

class Grid extends StatelessWidget {
  const Grid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("KOMIK Romance", style: TextStyle(color: Colors.white),), 
        backgroundColor: Color.fromARGB(255, 176, 141, 226),
      ),
      body: GridView.count(
        // Membuat grid dengan 2 kolom
        crossAxisCount: 2,
        // Membuat 100 widget yang menampilkan index dalam daftar
        children: List.generate(100, (index) {
          return Card(
            margin: EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Gambar
                Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6UyiRyyXO5QqPwSH3EDmfBZzY1ejdHt1EpA&s', // Ganti dengan URL gambar yang sesuai
                  width: 100,
                  height: 100,
                ),
                SizedBox(height: 8.0), // Jarak antara gambar dan deskripsi
                // Deskripsi
                Text(
                  'Item $index',
                  style: Theme.of(context).textTheme.headlineSmall,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
