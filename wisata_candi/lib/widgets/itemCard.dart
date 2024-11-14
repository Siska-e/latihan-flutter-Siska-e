import 'package:flutter/material.dart';
import 'package:wisata_candi/models/candi.dart';

class Itemcard extends StatelessWidget {
  //TODO: 1. Deklarasikan variabel yang dibutuhkan dan pasang pada konstruktor
  final Candi candi;
  const Itemcard({super.key, required this.candi});

  @override
  Widget build(BuildContext context) {
    // TODO: 6. Implementasi routing ke DetailScreen

    // TODO: 2. Tetapkan parameter shape, margin dan elevation dari Cari
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      margin: EdgeInsets.all(4),
      elevation: 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // TODO: 3. Buat Image 
          Expanded(
            // TODO: 7. Hero Animation
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                candi.imageAsset,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          // TODO: 4. Buat text
          Padding(
            padding:EdgeInsets.only(left: 16, top: 8),
            child: Text("${candi.name}", style: TextStyle(fontSize: 12),)
          ),

          // TODO: 5. Buat Text 
          Padding(
            padding:EdgeInsets.only(left: 16, bottom: 8),
            child: Text("${candi.type}", style: TextStyle(fontSize: 12),)
          ),
        ],
      ),
    );
  }
}