import 'package:flutter/material.dart';
import 'package:project_18/features/messages/widgets/message_list.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Message',
          style: TextStyle(
            fontSize: 20,
              fontWeight: FontWeight.bold
          ),),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: (){},
              icon:const Icon(Icons.search),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          Column(
            children: [
              MessageList(
                image: const CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("assets/images/face_9.png"),
                ),
                title: 'Rozzane Barrientees',
                subtitle: "A wonderful serenity",
                trailing:  Container(
                  height: 26,
                  width: 26,
                  decoration: const BoxDecoration(
                    color: Color(0xFF4CA6A8),
                    shape: BoxShape.circle,
                  ),
                  child: const Text(
                    '2',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                ),
              ),
              MessageList(
                image: const CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("assets/images/face_10.png"),
                ),
                title: 'Anaya Sanji',
                subtitle: 'What about paypal?',
                trailing:  Container(
                  height: 26,
                  width: 26,
                  decoration: const BoxDecoration(
                    color: Color(0xFF4CA6A8),
                    shape: BoxShape.circle,
                  ),
                  child: const Text('1',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                ),
              ),
              const MessageList(
                image: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("assets/images/face_11.png"),
                ),
                title: 'Elizabeth Olsen',
                subtitle: 'We should move forward to talk with..',
              ),
              const MessageList(
                image: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('assets/images/face_12.png'),
                ),
                title: 'Tony Stark',
                subtitle: 'Lets have a call for future..',
              ),
              const MessageList(
                image: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('assets/images/face_15.png'),
                ),
                title: 'Steave',
                subtitle: 'Move in some special work recently..',
              ),
              const MessageList(
                image: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('assets/images/face_8.png'),
                ),
                title: 'Thor',
                subtitle: 'You should be an avenger i think..',
              ),
              const MessageList(
                image: CircleAvatar(

                  radius: 25,
                  backgroundImage: AssetImage('assets/images/face_16.png'),
                ),
                title: 'Natasha',
                subtitle: 'Im going to kill the avangers end game',
              ),
              const MessageList(
                image: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('assets/images/face_17.png'),
                ),
                title: 'Hak Eye',
                subtitle: 'I have to save Natasha in avengers endgame',
              ),
            ],
          ),
        ],
      ),
    );
  }
}