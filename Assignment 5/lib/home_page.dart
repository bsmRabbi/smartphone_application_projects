import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Pet Gallery"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.info, color: Color.fromARGB(255, 255, 255, 255)),
          ),
        ],
      ),

      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text(
                "petslover",
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontWeight: FontWeight.normal,
                ),
              ),
              accountEmail: Text(
                "petslover@example.com",
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontWeight: FontWeight.normal,
                ),
              ),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 239, 42, 128),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.home, color: Colors.pink),
              title: const Text("Home"),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.pets, color: Colors.pink),
              title: const Text("My Pets"),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.settings, color: Colors.pink),
              title: const Text("Settings"),
            ),
          ],
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              'Pets Gallery',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Cats: Cute and Cuddly!',
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnkFNiv4JH-QdJS5CAJ514gLFAVS1EnIy4IUPpTvBdDHjJPqOwM7vHRfXJ4zaLVph-fxE&usqp=CAU',
                      height: 180,
                      width: 200,
                    ),
                    const SizedBox(height: 1),
                    Text('Persian Cat', style: TextStyle(fontSize: 16)),
                  ],
                ),
                const SizedBox(width: 10),
                Column(
                  children: [
                    Image.network(
                      'https://thumbs.dreamstime.com/b/portrait-cute-cat-looking-away-japanese-bobtail-cat-breed-portrait-cute-cat-looking-away-japanese-bobtail-cat-breed-303301284.jpg',
                      height: 180,
                      width: 200,
                    ),
                    const SizedBox(height: 1),
                    Text('Japanese Bobtail', style: TextStyle(fontSize: 16)),
                  ],
                ),
                const SizedBox(width: 10),
                Column(
                  children: [
                    Image.network(
                      'https://www.pdinsurance.co.nz/wp-content/uploads/2023/10/British-shorthair-2.jpg',
                      height: 180,
                      width: 200,
                    ),
                    const SizedBox(height: 1),
                    Text('British Shorthair', style: TextStyle(fontSize: 16)),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Dogs: Loyal and Loving!',
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwGh2SDwdheBYX1UCZ2SduBFl0c9_hsNcuWUMcsKFTMX8OSNFzG11U_CM0TmUywMRzVAk&usqp=CAU',
                      height: 180,
                      width: 200,
                    ),
                    const SizedBox(height: 1),
                    Text('Golden Retriever', style: TextStyle(fontSize: 16)),
                  ],
                ),
                const SizedBox(width: 10),
                Column(
                  children: [
                    Image.network(
                      'https://worldanimalfoundation.org/wp-content/uploads/2024/02/german-shepherd-2-3.jpg',
                      height: 180,
                      width: 200,
                    ),
                    const SizedBox(height: 1),
                    Text('German Shepherd', style: TextStyle(fontSize: 16)),
                  ],
                ),
                const SizedBox(width: 10),
                Column(
                  children: [
                    Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQTvgo0dEi8fhdQ2B32VbbLmUky31OT0x6LA&s',
                      height: 180,
                      width: 200,
                    ),
                    const SizedBox(height: 1),
                    Text('Beagle', style: TextStyle(fontSize: 16)),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Birds: Colorful and Chirpy!',
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Image.network(
                      'https://www.tracyvets.com/files/Cockatiel.jpeg',
                      height: 180,
                      width: 200,
                    ),
                    const SizedBox(height: 1),
                    Text('Cockatiels', style: TextStyle(fontSize: 16)),
                  ],
                ),
                const SizedBox(width: 10),
                Column(
                  children: [
                    Image.network(
                      'https://www.tracyvets.com/files/Canary.jpeg',
                      height: 180,
                      width: 200,
                    ),
                    const SizedBox(height: 1),
                    Text('Canaries', style: TextStyle(fontSize: 16)),
                  ],
                ),
                const SizedBox(width: 10),
                Column(
                  children: [
                    Image.network(
                      'https://www.tracyvets.com/files/Lovebirds.jpeg',
                      height: 180,
                      width: 200,
                    ),
                    const SizedBox(height: 1),
                    Text('Lovebirds', style: TextStyle(fontSize: 16)),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
