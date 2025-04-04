import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> categories = [
      {
        "title": "Jefes",
        "imageUrl": "https://i.imgur.com/KLcNgQd.jpeg",
        "route": "/jefes",
      },
      {
        "title": "Personajes",
        "imageUrl": "https://i.imgur.com/ghjbWM7.jpeg",
        "route": "/personajes",
      },
      {
        "title": "Armas",
        "imageUrl": "https://i.imgur.com/zDQjeK4.jpeg",
        "route": "/armas",
      },
      {
        "title": "Locaciones",
        "imageUrl": "https://i.imgur.com/dOdRrbw.jpeg",
        "route": "/locaciones",
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('El Diario del Cazador'),
        actions: [
          IconButton(
            icon: const Icon(Icons.info),
            onPressed: () {
              Navigator.pushNamed(context, '/info'); //  a la InfoScreen
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: MediaQuery.of(context).size.width > 600 ? 3 : 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: categories.length,
          itemBuilder: (context, index) {
            final category = categories[index];
            return GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, category["route"]!);
              },
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                clipBehavior: Clip.antiAlias,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Image.network(
                        category["imageUrl"]!,
                        fit: BoxFit.cover,
                        errorBuilder:
                            (context, error, stackTrace) => Container(
                              color: Colors.black54,
                              child: const Center(
                                child: Icon(
                                  Icons.broken_image,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      left: 10,
                      child: Text(
                        category["title"]!,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          backgroundColor: Colors.black54,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
