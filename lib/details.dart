import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  final String name;
  
  final String message;

  final String image;
  
  
  const Details({required this.name,required this.message,required this.image,super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(),
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
      body: Container(height: 50,width: 50,color: Colors.purple,child: Text(message),),
    );
  }
}
