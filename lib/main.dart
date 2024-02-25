import 'package:flutter/material.dart';
import 'package:flutter_practice/listofchats.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "whatsapp",
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal.shade700,
        title: const Text(
          "WhatsApp",
          style: TextStyle(color: Colors.white),
        ),
        actions: const [
          Icon(
            Icons.camera_alt_outlined,
            color: Colors.white,
          ),
          Icon(
            Icons.search,
            color: Colors.white,
          ),
          Icon(
            Icons.more_vert,
            color: Colors.white,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: Colors.white,
          height: 60,
          child: const Row(
            children: [
              CircleAvatar(radius: 23),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("swathi"),
                  Row(
                    children: [
                      Icon(
                        Icons.done_all_outlined,
                        color: Colors.blue,
                      ),
                      Text("hiiii")
                    ],
                  )
                ],
              ),
              Spacer(),
              Text("6:00"),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const ListOfChats(),
          ));
        },
        backgroundColor: Colors.teal.shade800,
      ),
    );
  }
}
