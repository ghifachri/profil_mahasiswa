import 'package:flutter/material.dart';
import '../widgets/profile_photo.dart';
import '../widgets/profile_info.dart';
import '../widgets/action_buttons.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: const [
                    ProfilePhoto(radius: 50),
                    SizedBox(height: 16),
                    ProfileInfo(
                      name: 'Satria Ghifachri Ardhana',
                      nim: '25.11.6332',
                      programStudi: 'Informatika',
                      email: 's.ghifachri@students.amikom.ac.id',
                      lokasi: 'Yogyakarta',
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            const ActionButtons(),
          ],
        ),
      ),
    );
  }
}