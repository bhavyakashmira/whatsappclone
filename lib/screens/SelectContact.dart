import 'package:flutter/material.dart';
import 'package:whatsapp/CustomUI/ButtonCard.dart';
import 'package:whatsapp/CustomUI/ContactCard.dart';
import 'package:whatsapp/Model/ChatModel.dart';

class Selectcontact extends StatefulWidget {
  const Selectcontact({super.key});

  @override
  State<Selectcontact> createState() => _SelectcontactState();
}

class _SelectcontactState extends State<Selectcontact> {
  @override
  Widget build(BuildContext context) {
    List<ChatModel> contacts = [
      ChatModel(
        name: "Sahil Rawat",
        status: "A full stack developer",
        currentMessage: '',
        icon: '',
        isGroup: false,
        time: '',
      ),
      ChatModel(
        name: "Mansimran",
        status: "Flutter Developer",
        currentMessage: '',
        icon: '',
        isGroup: false,
        time: '',
      ),
      ChatModel(
        name: "Vansh",
        status: "Developer",
        currentMessage: '',
        icon: '',
        isGroup: false,
        time: '',
      ),
      ChatModel(
        name: "Sriti Jha",
        status: "App developer",
        currentMessage: '',
        icon: '',
        isGroup: false,
        time: '',
      ),
      ChatModel(
        name: "Sahil Rawat",
        status: "A full stack developer",
        currentMessage: '',
        icon: '',
        isGroup: false,
        time: '',
      ),
      ChatModel(
        name: "Mansimran",
        status: "Flutter Developer",
        currentMessage: '',
        icon: '',
        isGroup: false,
        time: '',
      ),
      ChatModel(
        name: "Vansh",
        status: "Developer",
        currentMessage: '',
        icon: '',
        isGroup: false,
        time: '',
      ),
      ChatModel(
        name: "Sriti Jha",
        status: "App developer",
        currentMessage: '',
        icon: '',
        isGroup: false,
        time: '',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Select contact",
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "256 contacts",
              style: TextStyle(
                fontSize: 13,
              ),
            )
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                size: 26,
              )),
          PopupMenuButton<String>(
            padding: EdgeInsets.all(0),
            onSelected: (value) {
              print(value);
            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: Text("Invite a friend"),
                  value: "Invite a friend",
                ),
                PopupMenuItem(
                  child: Text("Contacts"),
                  value: "Contacts",
                ),
                PopupMenuItem(
                  child: Text("Refresh"),
                  value: "Refresh",
                ),
                PopupMenuItem(
                  child: Text("Help"),
                  value: "Help",
                ),
              ];
            },
          )
        ],
      ),
      body: ListView.builder(
          itemCount: contacts.length + 2,
          itemBuilder: (context, index) {
            if (index == 0) {
              return ButtonCard(
                icon: Icons.group,
                name: "New Group",
              );
            } else if (index == 1) {
              return ButtonCard(
                icon: Icons.person_add,
                name: "New Contact",
              );
            }
            return ContactCard(
              contact: contacts[index - 2],
            );
          }),
    );
  }
}
