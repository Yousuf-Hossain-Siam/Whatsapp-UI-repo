// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
            title: Text(
              "WhatsApp",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            bottom: TabBar(indicatorColor: Colors.white, tabs: [
              Icon(
                Icons.camera_alt,
                color: Colors.white,
              ),
              Text(
                "Chat",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              Text("Status",
                  style: TextStyle(color: Colors.white, fontSize: 18)),
              Text("Call", style: TextStyle(color: Colors.white, fontSize: 18))
            ]),
            actions: [
              Icon(
                Icons.search_outlined,
                color: Colors.white,
              ),
              SizedBox(width: 10),
              PopupMenuButton(
                  color: Colors.white,
                  icon: Icon(
                    Icons.more_vert_rounded,
                    color: Colors.white,
                  ),
                  itemBuilder: (context) => [
                        PopupMenuItem(value: 1, child: Text("New Group")),
                        PopupMenuItem(value: 2, child: Text("Setting")),
                        PopupMenuItem(value: 3, child: Text("Logout"))
                      ]),
              SizedBox(width: 10),
            ],
          ),
          body: TabBarView(children: [
            Text("Camera"),
            ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://images.pexels.com/photos/1516680/pexels-photo-1516680.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"),
                    ),
                    title: Text("Siam Hossain"),
                    subtitle: Text("How are you?"),
                    trailing: Text("8:54 PM"),
                  );
                }),
             ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Container(decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: Colors.green, width: 3)),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://images.pexels.com/photos/1516680/pexels-photo-1516680.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"),
                      ),
                    ),
                    title: Text("Siam Hossain"),
                    subtitle: Text("35  min ago"),
                 
                  );
                }),
            ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://images.pexels.com/photos/1516680/pexels-photo-1516680.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"),
                    ),
                    title: Text("Siam Hossain"),
                    subtitle: Text(index/2  == 0 ? "you have missed video call":"you have missed audio call"),
                trailing: Icon(index/2 ==0 ? Icons.video_call : Icons.phone),
                  );
                }),
          ]),
        ));
  }
}
