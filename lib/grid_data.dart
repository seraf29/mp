import 'package:flutter/material.dart';

class GridData extends StatelessWidget {
  GridData({super.key});
  final List<String> data = [
    'Slam Dunk',
    'Ashita No Joe',
    'Haikyuu',
    'Hajime No Ippo',
    'Kokou No Hito',
    'One Outs Follows Toua',
    'Diamond No Ace Act II',
    'Eyeshield 21 Is A Shonen',
  ];
  final List<String> imageUrls = [
    'https://static1.cbrimages.com/wordpress/wp-content/uploads/2022/05/Sakuragi-And-Rukawa-Go-For-The-Rebound-In-Slam-Dunk.jpg?q=50&fit=crop&w=705&h=397&dpr=1.5',
    'https://static1.cbrimages.com/wordpress/wp-content/uploads/2020/04/Ashita-No-Joe-Cropped.jpg?q=50&fit=crop&w=800&dpr=1.5',
    'https://static1.cbrimages.com/wordpress/wp-content/uploads/2021/10/haikyuu-hinata-kageyama-1.jpg?q=50&fit=crop&w=800&dpr=1.5',
    'https://static1.cbrimages.com/wordpress/wp-content/uploads/2020/08/Hajime-no-Ippo-George-Morikawa.jpg?q=50&fit=crop&w=800&dpr=1.5',
    'https://static1.cbrimages.com/wordpress/wp-content/uploads/2020/06/Kokou-no-Hito-night-view.jpg?q=50&fit=crop&w=800&dpr=1.5',
    'https://static1.cbrimages.com/wordpress/wp-content/uploads/2020/09/Toua-Tokuchi-One-Outs.jpg?q=50&fit=crop&w=800&dpr=1.5',
    'https://static1.cbrimages.com/wordpress/wp-content/uploads/2020/04/ace-of-diamond-20.jpg?q=50&fit=crop&w=800&dpr=1.5',
    'https://static1.cbrimages.com/wordpress/wp-content/uploads/2019/12/7-Eyeshield-21-Cropped.jpg?q=50&fit=crop&w=800&dpr=1.5',
  ];
  final List<String> harga = [
    'Rp. 100.000',
    'Rp. 100.000',
    'Rp. 100.000',
    'Rp. 100.000',
    'Rp. 100.000',
    'Rp. 100.000',
    'Rp. 100.000',
    'Rp. 100.000',
  ];

  final List<String> diskripsi = [
    'Slam Dunk is easily one of the best sports manga series of all time. The story follows Hanamichi Sakuragi, who has a history of being a delinquent. ',
    'Ashita No Joe is one of the best sports manga out there and one of the greatest boxing manga ever made.',
    'Focusing on the sport of volleyball, Haikyuu!! is the story of Hinata, who has to work together with Tobio Kageyama in a volleyball team during their time in high school.',
    'The series stars Makunouchi Ippo, a former high schooler who became a boxer after meeting the famed boxer Takamura. Learning to be the best that he can possibly be, Hajime No Ippo focuses on the study of boxing while also depicting its characters to their best and never hiding their losses.',
    'Kokou no Hito has to do with rock climbing, but not just regular rock climbing. Mori Buntarou is always on the search for new places to climb since his classmates convinced him that he could climb to the top of his high school.',
    'One Outs is the story of Toua Tokuchi, a master when it comes to mind games. After beating Hiromichi Kojima, a star batter, in a game of simplified baseball with just a batter and a pitcher, he is recruited to join his baseball team.',
    'Another baseball manga, Diamond No Ace Act II is the sequel to the original Diamond No Ace. In the first act, fans meet protagonist Eijun Sawamura, who catches the eye of a talent scout for the prestigious Seidou High School. Here, he meets talented players who give him a run for his money and challenge him in ways he never thought possible.',
    'Having some of the most gorgeous and expressive art courtesy of Yusuke Murata, Eyeshield 21 is a story about football. The series follows Sena Kobayakawa, who is forced into the football field under the pseudonym of "Eyeshield 21."',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("KOMIK Sport",
        style: TextStyle(color: Colors.white),),
        backgroundColor: Color.fromARGB(255, 176, 141, 226),
        
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
          ),
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                // Navigasi ke halaman detail dengan membawa data yang diperlukan
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPage(
                      title: data[index],
                      harga: harga[index],
                      imageUrl: imageUrls[index],
                      diskripsi: diskripsi[index],
                    ),
                  ),
                );
              },
              child: Card(
                //menambahkan bayangan
                elevation: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                imageUrls[index],
                              ),
                              fit: BoxFit.cover)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Center(
                        child: Column(
                          children: [
                            Text(data[index],
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold)),
                            Text(harga[index])
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  final String title;
  final String harga;
  final String imageUrl;
  final String diskripsi;

  DetailPage(
      {required this.title,
      required this.harga,
      required this.imageUrl,
      required this.diskripsi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Page'),
      ),
      body: Column(
        children: [
          Image.network(
            imageUrl,
            height: 300.0,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              title,
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ),
          Text(
            harga,
            style: TextStyle(color: Colors.green),
          ),
          Text(
            diskripsi,
            style: TextStyle(color: Colors.green),
          )
          // Tambahkan widget lainnya sesuai kebutuhan halaman detail Anda
        ],
      ),
    );
  }
}