import 'package:flutter/material.dart';
import 'package:whatsapp/CustomUI/CustomCard.dart';
import 'package:whatsapp/Model/ChatModel.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatModel> chats = [
    ChatModel(
      name: "IEEE",
      isGroup : false,
      currentMessage: "hi everyone",
      time: "4:00",
      icon : "person.svg"
    ),
        ChatModel(
      name: "Bhavya",
      isGroup : false,
      currentMessage: "hi everyone",
      time: "4:00",
      icon : "person.svg"
    ),
        ChatModel(
      name: "AAYUSH",
      isGroup : false,
      currentMessage: "hi everyone",
      time: "4:00",
      icon : "person.svg"
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.chat),
      ),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) => CustomCard(
          chatModel: chats[index],
        ),
        ),
         );
    
  }
}
