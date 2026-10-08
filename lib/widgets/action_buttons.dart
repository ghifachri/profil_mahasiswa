import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: 1,
          child: ElevatedButton.icon(
            onPressed: () {
              // Aksi untuk tombol Edit Profil
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Tombol Edit Profil diklik!')),
              );
            },
            icon: const Icon(Icons.edit),
            label: const Text('Edit Profil'),
          ),
        ),
        const SizedBox(width: 12),
        Flexible(
          flex: 1,
          child: OutlinedButton.icon(
            onPressed: () {
              // Fungsi untuk membagikan informasi profil
              Share.share('Halo! Ini adalah profil mahasiswa: Satria Ghifachri Ardhana (NIM: 25.11.6332)');
            },
            icon: const Icon(Icons.share),
            label: const Text('Bagikan'),
          ),
        ),
      ],
    );
  }
}