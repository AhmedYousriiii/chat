import 'package:flutter/material.dart';
import 'package:shats/model/chat_model.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<ChatModel> chat = [
    ChatModel(
      name: "Ahmed yousri",
      massage: "hi Ahmed, how are you ?",
      image: "asset/image/DSC_6339 copy.jpg",
      time: "10/10/2023",
    ),
    ChatModel(
      name: "Mohamed hany",
      massage: "hi Mohamed, how are you ?",
      image: "asset/image/DSC_6293 copy.jpg",
      time: "10/10/2023",
    ),
    ChatModel(
      name: "Omar Ali ",
      massage: "hi Omar, how are you ?",
      image: "asset/image/DSC_6339 copy.jpg",
      time: "10/10/2023",
    ),
    ChatModel(
      name: "Belal hany",
      massage: "hi belal, how are you ?",
      image: "asset/image/DSC_6293 copy.jpg",
      time: "10/10/2023",
    ),
    ChatModel(
      name: "Belal hany",
      massage: "hi belal, how are you ?",
      image: "asset/image/DSC_6293 copy.jpg",
      time: "10/10/2023",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 57, 78, 218),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 57, 78, 218),
        actions: [
          Icon(
            Icons.settings,
            color: Colors.white,
          )
        ],
        title: Text(
          "Chats",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Favorite Contacts",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
              bottom: 10,
            ),
            child: SizedBox(
              height: 120,
              width: double.infinity,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(),
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage(chat[index].image),
                            radius: 40,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            chat[index].name.split(" ").first,
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 10,
                    );
                  },
                  itemCount: chat.length),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 450,
                    width: double.infinity,
                    child: ListView.separated(
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.all(20),
                            decoration: BoxDecoration(),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundImage: AssetImage(chat[index].image),
                                      radius: 40,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            chat[index].name.split(" ").first,
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                              fontSize: 17,
                                              color: Colors.black,
                                            ),
                                          ),
                                          Text(
                                            chat[index].massage,
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Text("10/10/2023"),
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: 10,
                          );
                        },
                        itemCount: 4),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
