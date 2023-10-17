import 'package:flutter/material.dart';

import 'NewsByCategory.dart';

class Categories extends StatelessWidget {
  final String selectedCategory; 
  Categories({Key? key, required this.selectedCategory}) : super(key: key);


  ClipRRect tile(Color warnakotak, String gambar, String kategori) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
        color: warnakotak,
        child: GridTile(
          footer: SizedBox(
            height: 45,
            child: GridTileBar(
              backgroundColor: Colors.black38,
              title: Text(
                kategori,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          child: Image.asset(
            gambar,
          ),
        ),
      ),
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 126, 165, 255),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text("Kategori Berita", style: TextStyle(color: Colors.black)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Pilih Kategori",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text("Setiap kategori kami berikan berita terbaik"),
            Expanded(
              child: GridView(
                padding: const EdgeInsets.only(top: 30, left: 3, right: 3),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15),
                scrollDirection: Axis.vertical,
                children: [
                  tile(Colors.white, 'assets/images/education.png',
                      'Pendidikan'),
                  tile(Colors.white, 'assets/images/sport.png', 'Olahraga'),
                  tile(Colors.white, 'assets/images/healthy.png', 'Kesehatan'),
                  tile(Colors.white, 'assets/images/business.png',
                      'Ekonomi & Bisnis'),
                  tile(
                      Colors.white, 'assets/images/politic.png', 'Pemilu 2024'),
                  tile(Colors.white, 'assets/images/tech.png', 'Kriminal'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  void onCategorySelected(BuildContext context, String category) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => NewsByCategory(category: category),
    ));
  }

}
