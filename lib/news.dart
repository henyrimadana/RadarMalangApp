import 'package:flutter/material.dart';
import 'detail.dart';
import 'itemmodel.dart';

class News extends StatelessWidget {
  final List<ItemModel> newsData = [
    ItemModel(
      category: "Ekonomi & Bisnis",
      title:
          "Pj Wali Kota Malang Dorong Percepatan Penerbitan Kartu Kredit Indonesia",
      description:
          "JAKARTA - Menindaklanjuti amanat Keputusan Presiden Nomor 3 Tahun 2021 tentang Satuan Tugas Percepatan dan Perluasan Digitalisasi Daerah (Satgas P2DD) dan pasal 8 Keputusan Menteri Koordinator Bidang Perekonomian Nomor 147 Tahun 2021 tentang Keanggotaan, Tugas, dan Mekanisme Kerja Satgas P2DD, maka Selasa (3/10) di Grand Sahid Jaya Hotel Jakarta telah dilaksanakan Rakornas Percepatan dan Perluasan Digitalisasi Daerah (P2DD) Tahun 2023 dengan mengambil tema \"Sinergi Nasional Akselerasi Digitalisasi Daerah Untuk Indonesia Maju\". Pj Wali Kota Malang, Dr Ir Wahyu Hidayat MM berkesempatan hadir memenuhi undangan pada kegiatan dimaksud. Turut hadir mendampingi Kepala Bapenda, Handy Priyanto, Kepala Diskominfo, M. Nurwidianto dan Kepala Disnaker PMPTSP, Arif Tri Sastyawan. Rakornas sebagai forum tertinggi koordinasi percepatan dan perluasan digitalisasi daerah ini dipimpin langsung oleh Wakil Presiden RI, Ma'ruf Amin dan diikuti oleh Menteri/Pimpinan Lembaga Anggota Satgas P2DD. Rakornas ini juga bentuk upaya akselerasi digitalisasi transaksi di Pemerintah Daerah guna mendukung pemulihan ekonomi dan pengelolaan keuangan daerah, juga sekaligus sebagai momen penghargaan bagi Tim P2DD.",
      imageUrl:
          "https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p2/81/2023/10/04/IMG-20231004-WA0006-3160111283.jpg",
      date: "Rabu, 04 Oktober 2023",
    ),
    ItemModel(
      category: "Ekonomi & Bisnis",
      title: "MCP Siap Dilelang Lagi, Nayumi Sam Tower Hanya Bisa Pasrah",
      description: "Deskripsi berita 2...",
      imageUrl:
          "https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p2/81/2023/10/05/Apartement-MCp-darmono-1JPG-1442856381.jpg",
      date: "Kamis, 05 Oktober 2023",
    ),
    ItemModel(
      category: "Lingkungan",
      title: "Hutan Kota Bondas Tidak Terawat",
      description: "Deskripsi berita 3...",
      imageUrl:
          "https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p2/81/2023/10/04/taman-bondas-2-3491746678.jpg",
      date: "Kamis, 05 Oktober 2023",
    ),
    ItemModel(
      category: "Ekonomi & Bisnis",
      title:
          "BSIP Rancang Grand Design untuk Peningkatan Penerapan Standar Bidang Pertanian",
      description: "Deskripsi berita 4...",
      imageUrl:
          "https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p2/81/2023/10/05/Screenshot_20231005_081525_Drive-1970625665.jpg",
      date: "Kamis, 05 Oktober 2023",
    ),
    ItemModel(
      category: "Pendidikan",
      title: "Larang Pelajar Naik Gethek, Pemkot Malang Siapkan 9 Mobil",
      description: "Deskripsi berita 5...",
      imageUrl:
          "https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p2/81/2023/10/05/pj-larang-siswa-naik-gethek-harto-10-3292114581.jpg",
      date: "Kamis, 05 Oktober 2023",
    ),
    // Tambahkan data berita lainnya di sini
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          title: Text(
            "Jawa Pos Radar Malang",
            style: TextStyle(color: Colors.black),
          ),
          bottom: Tab(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'search',
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                    prefixIcon: Icon(Icons.search, color: Colors.black),
                    suffixIcon: Icon(Icons.mic, color: Colors.black),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 30,
              child: ListView(
                scrollDirection: Axis.horizontal, // Membuat tombol horizontal
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Aksi yang dijalankan saat tombol "Semua Berita" ditekan
                      // Anda bisa menambahkan navigasi atau filter berita di sini
                    },
                    child: Text("Ekonomi & Bisnis"),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      // Aksi yang dijalankan saat tombol "Kategori Lainnya" ditekan
                      // Anda bisa menambahkan navigasi atau filter berita di sini
                    },
                    child: Text("Pendidikan"),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      // Aksi yang dijalankan saat tombol "Kategori Lainnya" ditekan
                      // Anda bisa menambahkan navigasi atau filter berita di sini
                    },
                    child: Text("Politik"),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      // Aksi yang dijalankan saat tombol "Kategori Lainnya" ditekan
                      // Anda bisa menambahkan navigasi atau filter berita di sini
                    },
                    child: Text("Lingkungan"),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      // Aksi yang dijalankan saat tombol "Kategori Lainnya" ditekan
                      // Anda bisa menambahkan navigasi atau filter berita di sini
                    },
                    child: Text("Kriminal"),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      // Aksi yang dijalankan saat tombol "Kategori Lainnya" ditekan
                      // Anda bisa menambahkan navigasi atau filter berita di sini
                    },
                    child: Text("Olahraga"),
                  ),
                  // Tambahkan tombol kategori lainnya di sini sesuai kebutuhan
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: newsData.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Detail(
                          newsData[index],
                          newsData: {},
                        ),
                      ),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(newsData[index].imageUrl),
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
                                  newsData[index].category,
                                  style: TextStyle(color: Colors.red),
                                ),
                                Text(
                                  newsData[index].title,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(newsData[index].date)
                              ],
                            ),
                            height: 100,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
