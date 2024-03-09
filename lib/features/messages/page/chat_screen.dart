import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/chat_sample.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          backgroundColor: Colors.white,
          leadingWidth:20,
          title: const Padding(
            padding: EdgeInsets.only(top: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(radius: 25,
                  backgroundImage:AssetImage("assets/images/face_10.png"),
                ),
                Padding(padding: EdgeInsets.only(left: 10),
                  child: Text("Anaya Sanji",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(top: 8, right: 15),
              child: Icon(Icons.call,
                color: Colors.black,
                size: 24,
              ),
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: 4,
         padding: const EdgeInsets.only(top: 20,left: 15,right: 15,bottom: 80),
        itemBuilder: (context,index) => ChatSample(),
      ),
      bottomSheet: Container(
        height: 65,
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              spreadRadius: 2,
              blurRadius: 10,
            ),
          ],
        ),
        child: Row(
          children: [
            const Padding(padding: EdgeInsets.only(left: 8),
              child: Icon(CupertinoIcons.add_circled_solid,
                color: Color(0xFF4CA6A8),
                size: 30,),
            ),
            Spacer(),
            Padding(padding: EdgeInsets.only(left: 10),
              child: Container(
                alignment: Alignment.centerRight,
                width: MediaQuery.of(context).size.width/1.5,
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Type a message",
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Spacer(),
            const Padding(padding: EdgeInsets.only(right: 10),
              child: Icon(Icons.send,
                size: 24,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
