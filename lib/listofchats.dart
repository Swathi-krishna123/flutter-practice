import 'package:flutter/material.dart';
import 'package:flutter_practice/dataas.dart';
import 'package:flutter_practice/details.dart';

class ListOfChats extends StatelessWidget {
  const ListOfChats({super.key});

  @override
  Widget build(BuildContext context) {
    Datas data = Datas();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal.shade800,
        title: const Text(
          "Chats",
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
          )
        ],
      ),
      body: ListView.separated(separatorBuilder: (context, index) => Divider(endIndent: 10,indent: 10),
        itemCount: data.items.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(radius: 23,backgroundImage: AssetImage(data.items[index]["image"])),
            title: Text(
      
              data.items[index]["name"],
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            subtitle: Row(
              children: [
                const Icon(Icons.done_all, color: Colors.green),
                const SizedBox(width:5),
                Text(data.items[index]["message"]),
              ],
        
            ),
            onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Details(
                    name: data.items[index]["name"],
                    message: data.items[index]["message"],
                    image: data.items[index]["image"],
                  ),
                ));
              },
          );
        },
      ),
    );
  }
}
