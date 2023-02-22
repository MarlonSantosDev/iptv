import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 34, 31, 48),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 34, 31, 48),
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Icons.supervised_user_circle_outlined,
              size: 30.0,
            ),
            const SizedBox(
              width: 5,
            ),
            const Text("TVRio.top"),
            Container(
              margin: const EdgeInsets.all(8),
              color: Colors.black,
              width: 1,
              height: 40,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  "12:43 PM",
                  style: TextStyle(fontSize: 14, color: Colors.grey[350]),
                ),
                Text(
                  "Feb 10, 2023",
                  style: TextStyle(fontSize: 14, color: Colors.grey[350]),
                ),
              ],
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () => null,
            icon: const Icon(
              Icons.settings,
              size: 24.0,
            ),
          ),
          const SizedBox(
            width: 8,
          ),
        ],
        elevation: 0,
      ),
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          card(
            titulo: "Tv",
            function: () => print("TV"),
            qtdCanais: "5203",
            icon: Icons.live_tv,
          ),
          card(
            titulo: "Filmes",
            function: () => print("filmes"),
            qtdCanais: "351",
            color: Colors.yellowAccent,
            icon: Icons.movie_outlined,
          ),
          card(
            titulo: "Séries",
            function: () => print("Séries"),
            qtdCanais: "344",
            color: Colors.blueAccent,
            icon: Icons.local_movies_outlined,
          ),
        ],
      ),
    );
  }

  Widget card({required String titulo, required IconData icon, required Function function, required String qtdCanais, Color color = Colors.grey}) {
    return GestureDetector(
      onTap: () => function(),
      child: Container(
        height: MediaQuery.of(context).size.height / 3,
        width: (MediaQuery.of(context).size.width / 3) - 30,
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: const Color.fromARGB(255, 38, 36, 50),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              icon,
              size: 28,
              color: Colors.white,
            ),
            Text(
              titulo,
              style: const TextStyle(fontSize: 21, color: Colors.white),
            ),
            const SizedBox(
              width: 8,
            ),
            Row(
              children: [
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    color: color,
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  qtdCanais,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[350],
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  "Canais",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[350],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
