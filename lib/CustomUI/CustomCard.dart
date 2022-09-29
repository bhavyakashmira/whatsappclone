import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:whatsapp/Model/ChatModel.dart';
import 'package:whatsapp/screens/IndividualPage.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({Key? key , required this.chatModel}) : super(key: key);
  final ChatModel chatModel;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => IndividualPage()));
      },
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              child: SvgPicture.asset(
                chatModel.isGroup?'person_black_36dp.svg' : 'groups_black_36dp.svg',
                color: Colors.white,
                height: 38,
                width: 38,
              ),
              backgroundColor: Colors.blueGrey,
              radius: 30,
            ),
            title: Text(
              chatModel.name,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Row(
              children: [
                Icon(Icons.done_all),
                SizedBox(
                  width: 3,
                ),
                Text(
                 chatModel.currentMessage ,
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
              ],
            ),
            trailing: Text(chatModel.time),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 80),
            child: Divider(
              thickness: 1,
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              child: SvgPicture.asset(
                'groups_black_36dp.svg',
                color: Colors.white,
                height: 38,
                width: 38,
              ),
              backgroundColor: Colors.blueGrey,
              radius: 30,
            ),
            title: Text(
              "group",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Row(
              children: [
                Icon(Icons.done_all),
                SizedBox(
                  width: 3,
                ),
                Text(
                  "Hi wassup?",
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
              ],
            ),
            trailing: Text("18:04"),
          ),
        ],
      ),
    );

  }
}
