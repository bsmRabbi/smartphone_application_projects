import 'package:flutter/material.dart';
import 'pages.dart'; // where ProfilePage and GalleryPage live

class HomePage extends StatelessWidget {
  final String title;

  const HomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome to My Simple App",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Text(
              "This demo app shows a basic home page with navigation to a profile page and a gallery page from the web.",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 24),

            // Buttons to other pages
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProfilePage()),
                );
              },
              icon: const Icon(Icons.person),
              label: const Text("Go to Profile Page"),
            ),
            const SizedBox(height: 12),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const GalleryPage()),
                );
              },
              icon: const Icon(Icons.photo),
              label: const Text("Go to Gallery Page"),
            ),
            const SizedBox(height: 24),

            // Some network pictures
            Text(
              "Featured Images",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEvrXbmYclgQUfJnXuSqYF8ZGrfSvwFjSM7Q&s",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
