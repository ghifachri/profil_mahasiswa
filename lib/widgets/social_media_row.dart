import 'package:flutter/material.dart';

class SocialMediaRow extends StatelessWidget {
  const SocialMediaRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: const Icon(Icons.camera_alt), // Representasi Instagram / Sosmed
          color: Colors.purple,
          iconSize: 30,
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Instagram diklik')),
            );
          },
        ),
        const SizedBox(width: 16),
        IconButton(
          icon: const Icon(Icons.business), // Representasi LinkedIn
          color: Colors.blue,
          iconSize: 30,
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('LinkedIn diklik')),
            );
          },
        ),
        const SizedBox(width: 16),
        IconButton(
          icon: const Icon(Icons.code), // Representasi GitHub
          color: Colors.black,
          iconSize: 30,
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('GitHub diklik')),
            );
          },
        ),
      ],
    );
  }
}