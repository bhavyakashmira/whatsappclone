

import 'dart:html';

import 'package:chatapp/Model/ChatModel.dart';
import 'package:flutter/material.dart';

class IndividualPage extends StatefulWidget {
  IndividualPage({Key key, this.chatModel}) : super(key: key);
  final ChatModel chatmodel;

  @override
  _IndividualPageState createState() => _IndividualPageState();
}

class ChatModel {
}

class _IndividualPageState extends State<IndividualPage> {
  bool show = false;
  FocusNode focusNode = FocusNode();
  TextEditingController _controller = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    focusNode.addListener(() {
      if (focusNode.hasFocus){
        setState(() {
          show = false;
        });
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: PreferredSize(
        preferredSize: Sixe.fromHeight(60),
        child: AppBar(
          titleSpacing: 0,
          leadingWidth: 70,
          leading: InkWell(
            onTap: (){
              Navigator.pop(context);
            }
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.arrow_back,
                size: 24,
                ),
                CircleAvatar(
                  child: SvgPicture.asset(

                    widget.chatmodel.isGroup ? "assets/groups.svg" : "assets/person.svg",
                    color: Colors.white,
                    height: 36,
                    width: 36,
                  ),
                  radius: 20,
                  backgroundColor: Colors.blueGrey,
                ),
              ]
            ),
          ),
          title: InkWell(
            onTap: (){},
            child: Container(
              margin: EdgeInsets.all(6),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.chatmodel.name,style: TextStyle(
                    fontSize: 18.5,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  Text("last seen today at 12:05",
                  style: TextStyle(
                    fontSize: 13,
                  ),
                  )
                ]
              ),
            ),
          ),
          actions: [
            IconButton( icon: Icon(Icons.videocam), onPressed: (){}),
            IconButton(icon: Icon(Icons.call), onPressed: (){})
            PopupMenuButton<String>(
              onSekected: (value) {
                print(value);
              },
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem(
                  child: Text("View contact"),
                  value: "View contact",
                  ),
                  PopupMenuItem(
                  child: Text("Media, links, and docs"),
                  value: "Media, links, and docs",
                  ),
                  PopupMenuItem(
                  child: Text("Search"),
                  value: "Search",
                  ),
                  PopupMenuItem(
                  child: Text("Mute notifications"),
                  value: "Mute notifications",
                  ),
                  PopupMenuItem(
                  child: Text("Disappearing messages"),
                  value: "Disappearing messages",
                  ),
                  PopupMenuItem(
                  child: Text("Wallpaper"),
                  value: "Wallpaper",
                  ),
                ];
              },
            )
          ],
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height ,
        width: MediaQuery.of(context).size.width,
        child: WillPopScope(
          child: Stack(
            children: [
              ListView(),
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      children:[
                        Container(
                          width: MediaQuery.of(context).size.width - 60,
                           child: Card(
                            margin: EdgeInsets.only(left: 2, right: 2, bottom: 8),
                            shape:RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: TextFormField(
                              controller: _controller,
                              focusNode: focusNode,
                              textAlignVertical: TextAlignVertical.center,
                              keyboardType: TextInputType.multiline,
                              maxLines: 5,
                              minLines: 1,
                              decoration: InputDecoration(
                                border: InputBorder.none
                                hintText: "Type a message",
                                prefix: IconButton(
                                  icon: Icon(
                                    Icons.emoji_emotions_outlined,
        
                                ),
                                onPressed: () {
                                  focusNode.unfocus();
                                  focusNode.canRequestFocus= false;
                                  setState(() {
                                    show=!show;
                                  });
                                },
                              ),
                                suffixIcon: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    IconButton(
                                     icon: Icon(Icons.attach_file),
                                     onPressed:() {},
                                    ),
                                    IconButton(
                                     icon: Icon(Icons.camera_alt),
                                     onPressed:() {},
                                    ),
                                  ],
                                ),
                                contentPadding: EdgeInsets.all(5),
                              ),
                            )
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            bottom: 8,
                            right: 5,
                            left: 2,
                          ),
                          child: CircleAvatar(
                            radius: 25,
                            backgroundColor: Color(0xFF128C7E) ,
                            child: IconButton(onPressed: () {},
                             icon: Icon(
                              Icons.mic,
                              color: Colors.white,
                            ),
                            onPressed:() {},
                            ),
                          ),
                        ),
                      ]
                    ),
                    show?emojiSelect() : Container(),
                  ],
                ),
              )
            ],
          ),
          onWillPop: (){
            if (show)
            {
              setState(() {
                show = false;
              });
               
            }
            else
              {
                Navigator.pop(context);
              }
              return Future.value(false);
          },
        ),
      )
    );
  }
  Widget emogiSelect()
  {
    return EmojiPicker(
      rows: 4,
      columns: 7,
      onEmojiselected: (emoji, category) {
      print(emoji);
      setState(() {
        _controller.text= _controller.text + emoji.emoji;
      });
    });
  }
}
