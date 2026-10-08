import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          // a) Gambar latar berupa Container dengan BoxDecoration dan gradient
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue, Colors.indigo],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          // b) Teks "Tentang Aplikasi" di tengah
          const Text(
            'Tentang Aplikasi Profil Mahasiswa\nVersi 1.0.0',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          // c) Tombol "Kembali" di pojok kiri atas menggunakan Positioned
          Positioned(
            top: 40,
            left: 20,
            child: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {
                // Menggunakan Navigator.pop untuk kembali ke halaman sebelumnya
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}