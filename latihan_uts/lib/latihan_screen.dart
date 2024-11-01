import 'package:flutter/material.dart';

class LatihanScreen extends StatelessWidget {
  const LatihanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Latihan UTS'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                  child: Text(
                "INFORMATIKA",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
              )),
              SizedBox(
                height: 8,
              ),
              Image.asset('images/latihan.jpg',height: 250, width: double.infinity, fit: BoxFit.cover),
              const Text(
                "Universitas Multi Data Palembang",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
              ),
              const Text("Kota Palembang, Prov. Sumatera Selatan", style: TextStyle(fontSize: 18),),
              const SizedBox(height: 16,),
              //area container
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.red[900],
                ),
                width: double.infinity,
                child: const Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    children: [
                      //beris isi info
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Status", style: TextStyle(color: Colors.white),),
                                Text("Aktif", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                                SizedBox(height: 8,),
                                Text("Akreditasi", style: TextStyle(color: Colors.white),),
                                Text("Unggul", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ),
                          //tgl berdiri dan jumlah
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Tanggal Berdiri", style: TextStyle(color: Colors.white),),
                                Text("9 April 2021", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                                SizedBox(height: 8,),
                                Text("Jumlah Mahasiswa", style: TextStyle(color: Colors.white),),
                                Text("5000", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Icon(Icons.phone, color: Colors.white,),
                                SizedBox(width: 4,),
                                Text("0711-376400", style: TextStyle(color: Colors.white),)
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Icon(Icons.email, color: Colors.white,),
                                SizedBox(width: 4,),
                                Text("kuliah@mdp.ac.id", style: TextStyle(color: Colors.white),)
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Icon(Icons.web, color: Colors.white,),
                                SizedBox(width: 4,),
                                Text("mdp.ac.id", style: TextStyle(color: Colors.white),)
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey[300]
                ),
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Alamat"),
                      Text("Jl. Rajawali no. 14",
                      style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold
                      ),),
                      SizedBox(height: 26,),
                      ElevatedButton(
                        onPressed: () {}, 
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red[900],
                          foregroundColor: Colors.white,
                          minimumSize: const Size(double.infinity, 50),
                        ),
                        child: const Text("Button Text"))
                    ],
                  ),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
