import 'package:flutter/material.dart';

import 'itemmodel.dart';
class NewsByCategory extends StatelessWidget {
  final String category; // Parameter kategori
  NewsByCategory({Key? key, required this.category}) : super(key: key);
  
  get newsData => null;

  @override
  Widget build(BuildContext context) {
    final List<ItemModel> newsByCategory = newsData.where((item) => item.category == category).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text("Berita Kategori: $category"),
      ),
      body: ListView.builder(
        itemCount: newsByCategory.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(newsByCategory[index].title),
            // Tambahkan widget lainnya untuk menampilkan berita sesuai kategori
          );
        },
      ),
    );
  }
}
