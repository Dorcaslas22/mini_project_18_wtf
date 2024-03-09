import 'package:flutter/material.dart';

import '../page/chat_screen.dart';

class MessageList extends StatelessWidget {
  const MessageList({
    super.key, required this.title,
    required this.subtitle,
    required this.image,
    this.trailing = const Text(''),
  });
  final String title;
  final String subtitle;
  final Widget image;
  final Widget trailing;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical:8),
      child: ListTile(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(
            builder: (context) => const ChatScreen(),));
        },
        leading: image,
        title: Text(title,
          style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold
          ),),
        subtitle: Text(subtitle,
          style: const TextStyle(
              fontSize: 16
          ),),
        trailing: trailing,
      ),
    );
  }
}