import 'package:flutter/material.dart';

class GaleriFoto extends StatelessWidget {
  const GaleriFoto({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Galeri Foto"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Image.network(
            "https://picsum.photos/id/88/300/200",
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.all(16),
            padding: const EdgeInsets.all(16),
            child: Text(
              "Jalan Barcelona",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Divider(
              thickness: 2,
              height: 32,
            ),
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.place,
                color: Colors.red,
              ),
              Text("Lokasi: Barcelona, Spanyol"),
            ],
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.calendar_month,
                color: Colors.blueAccent,
              ),
              Text("Publikasi: 13 Agustus 2013")
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Divider(
              thickness: 2,
              height: 32,
            ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.all(10),
            child: Text(
              "Deskripsi",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.all(10),
            child: Text(
              "Sebuah persimpangan jalan di Barcelona, Spanyol. Foto ini menampilkan berbagai kendaraan yang bergerak dalam arah yang berbeda, menciptakan pemandangan yang sibuk dan energik.",
              style: TextStyle(fontSize: 15),
              textAlign: TextAlign.justify,
            ),
          )
        ],
      ),
    );
  }
}
