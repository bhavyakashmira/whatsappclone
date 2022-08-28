import 'package:flutter/material.dart';
import 'package:whatsapp/chatpage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("whatsapp clone"),
        backgroundColor: Color.fromARGB(255, 15, 171, 122),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          PopupMenuButton<String>(
            onSelected: (value) {
            print(value);
          },
           itemBuilder: (BuildContext contesxt) {
            return [
              PopupMenuItem(
                child: Text("New group"),
                value: "new group",
              ),
              PopupMenuItem(
                child: Text("New broadcast"),
                value: "new broadcast",
              ),
              PopupMenuItem(
                child: Text("Whatsapp Web"),
                value: "whatsapp web",
              ),
              PopupMenuItem(
                child: Text("Starred Message"),
                value: "Starred message",
              ),
              PopupMenuItem(
                child: Text("setting"),
                value: "settings",
              ),
            ];
          },
           )
        ],
        bottom: TabBar(
          controller: _controller,
          indicatorColor: Colors.white,
          tabs: [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
              Tab(
                text: "CHAT",
              ),
            Tab(
              text: "STATUS",
            ),
            Tab(
              text: "CALLS",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          Text("Camera"),
          ChatPage(),
          Text("Status"),
          Text("Calls"),
        ],
      ),
    );
  }
}
