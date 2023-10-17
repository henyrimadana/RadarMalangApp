import 'package:flutter/material.dart';
import 'package:radarmalangapp/loginpage.dart';
import 'package:radarmalangapp/news.dart';
import 'package:radarmalangapp/categories.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Radar Malang App",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: const Color.fromARGB(255, 56, 36, 36),
              )),
        ],
        iconTheme: IconThemeData(color: Colors.black),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 109, 162, 255),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    maxRadius: 35.0,
                    backgroundImage: AssetImage('assets/images/developer.jpeg'),
                  ),
                  SizedBox(height: 15),
                  Text("Heny Rimadana"),
                  Text("rimadanaheny@gmail.com")
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.newspaper),
              title: Text("Semua Berita"),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => News()));
              },
            ),
            ListTile(
              leading: Icon(Icons.list_alt),
              title: Text("Kategori Berita"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Categories(
                              selectedCategory: '',
                            )));
              },
            ),
            
            new Divider(),
            ListTile(
              leading: Icon(Icons.home),
              // trailing: Icon(Icons.cancel),
              title: Text("Beranda"),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app_outlined),
              trailing: Icon(Icons.cancel),
              title: Text("Log Out"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => loginpage()));
              },
            ),
          ],
        ),
      ),
      body: Container(
        child: Column(children: [
          Container(
            padding: EdgeInsets.only(top: 10.0),
            height: 50,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Semua Berita",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Berita Pilihan",
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    "Berita Populer",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            color: Color.fromARGB(255, 109, 162, 255),
            height: 365,
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: NetworkImage(
                          "https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p2/81/2023/10/01/5-berlatih-membatik-darmono-3-min-1229755146.jpg"),
                      fit: BoxFit.fitWidth,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  height: 220,
                ),
                Container(
                  height: 60,
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    "Cara Penyandang Disabilitas di Malang Peringati Hari Batik",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Container(
                    height: 45,
                    color: Color.fromARGB(255, 255, 255, 255),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                            " Selasa, 03 Oktober 2023 | Jawa Pos Radar Malang"),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: myList,
            ),
          ),
        ]),
      ),
    );
  }

  List<Widget> myList = [
    SizedBox(height: 10),
    Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: NetworkImage(
                      "https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p2/81/2023/10/04/IMG-20231004-WA0006-3160111283.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              height: 100,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.only(left: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Ekonomi & Bisnis",
                    style: TextStyle(color: Colors.red),
                  ),
                  Text(
                    "Pj Wali Kota Malang Dorong Percepatan Penerbitan Kartu Kredit Indonesia",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("Rabu, 04 Oktober 2023")
                ],
              ),
              height: 100,
            ),
          ),
        ],
      ),
    ),
    SizedBox(height: 10),
    Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: NetworkImage(
                      "https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p2/81/2023/10/05/Apartement-MCp-darmono-1JPG-1442856381.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              height: 100,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.only(left: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Ekonomi & Bisnis",
                    style: TextStyle(color: Colors.red),
                  ),
                  Text(
                    "MCP Siap Dilelang Lagi, Nayumi Sam Tower Hanya Bisa Pasrah",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("Kamis, 05 Oktober 2023")
                ],
              ),
              height: 100,
            ),
          ),
        ],
      ),
    ),
    SizedBox(height: 10),
    Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: NetworkImage(
                      "https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p2/81/2023/10/04/taman-bondas-2-3491746678.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              height: 100,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.only(left: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Lingkungan",
                    style: TextStyle(color: Colors.red),
                  ),
                  Text(
                    "Hutan Kota Bondas Tidak Terawat",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("Kamis, 05 Oktober 2023")
                ],
              ),
              height: 100,
            ),
          ),
        ],
      ),
    ),
    SizedBox(height: 10),
    Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: NetworkImage(
                      "https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p2/81/2023/10/05/Screenshot_20231005_081525_Drive-1970625665.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              height: 100,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.only(left: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Ekonomi & Bisnis & Bisnis",
                    style: TextStyle(color: Colors.red),
                  ),
                  Text(
                    "BSIP Rancang Grand Design untuk Peningkatan Penerapan Standar Bidang Pertanian",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("Kamis, 05 Oktober 2023")
                ],
              ),
              height: 100,
            ),
          ),
        ],
      ),
    ),
    SizedBox(height: 10),
    Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: NetworkImage(
                      "https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p2/81/2023/10/05/pj-larang-siswa-naik-gethek-harto-10-3292114581.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              height: 100,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.only(left: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Pendidikan",
                    style: TextStyle(color: Colors.red),
                  ),
                  Text(
                    "Larang Pelajar Naik Gethek, Pemkot Malang Siapkan 9 Mobil",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("Kamis, 05 Oktober 2023")
                ],
              ),
              height: 100,
            ),
          ),
        ],
      ),
    ),
  ];
}
