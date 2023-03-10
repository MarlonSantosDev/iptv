import 'package:flutter/material.dart';
import 'package:iptv/config/view/ConfigPage.dart';
import 'package:iptv/perfil/view/PerfilPage.dart';
import 'package:iptv/tv/view/TvPage.dart';

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
            IconButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PerfilPage(),
                ),
              ),
              icon: const Icon(
                Icons.supervised_user_circle_outlined,
                size: 28.0,
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            const Text("IP TV"),
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
                  "Feb 22, 2023",
                  style: TextStyle(fontSize: 14, color: Colors.grey[350]),
                ),
              ],
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ConfigPage(),
              ),
            ),
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
            function: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const TVPage(),
              ),
            ),
            subtitulo: "5203 Canais",
            icon: Icons.live_tv,
          ),
          card(
            titulo: "Filmes",
            function: () => print("filmes"),
            subtitulo: "351 Canais",
            color: Colors.yellowAccent,
            icon: Icons.movie_outlined,
          ),
          card(
            titulo: "S??ries",
            function: () => print("S??ries"),
            subtitulo: "344 Canais",
            color: Colors.blueAccent,
            icon: Icons.local_movies_outlined,
          ),
          card(
            titulo: "Downloads",
            function: () => print("Downloads"),
            subtitulo: '1 Conte??do',
            color: Colors.green,
            icon: Icons.offline_pin_outlined,
          ),
        ],
      ),
    );
  }

  Widget card({
    required String titulo,
    required IconData icon,
    required Function function,
    required String subtitulo,
    Color color = Colors.blueGrey,
  }) {
    return GestureDetector(
      onTap: () => function(),
      child: Container(
        height: MediaQuery.of(context).size.height / 4,
        width: (MediaQuery.of(context).size.width / 4) - 30,
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
                  subtitulo,
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
