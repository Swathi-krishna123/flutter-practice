

import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  final String name;
  const Details({required this.name, super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal.shade800,
        title: Row(
          
          children: [
            const CircleAvatar(
              radius: 20,
            ),
            Column(
              children: [
                Text(
                  name,
                  style: const TextStyle(color: Colors.white),
                ),
                const Text(
                  "12:00",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ],
        ),
        actions: const [
          Icon(
            Icons.videocam_rounded,
            color: Colors.white,
          ),
          Icon(
            Icons.call,
            color: Colors.white,
          ),
          Icon(
            Icons.more_vert,
            color: Colors.white,
          )
        ],
      ),
    
    );
  }
}
