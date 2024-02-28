import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  final String name;

  final String message;

  final String image;

  const Details(
      {required this.name,
      required this.message,
      required this.image,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(backgroundImage: AssetImage(image)),
        ),
        backgroundColor: Colors.teal.shade800,
        title: Text(
          name,
          style: const TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.videocam,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.call,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                color: Colors.white,
              ))
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 50,
            width: 500,
            color: Colors.purple,
            child: Text(message),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: const Text("heloo world"),
                height: 300,
                width: 300,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://images.pexels.com/photos/56866/garden-rose-red-pink-56866.jpeg?auto=compress&cs=tinysrgb&w=600"),
                      fit: BoxFit.cover),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
