import 'package:flutter/material.dart';

class SettingList extends StatelessWidget {
  const SettingList({super.key,
    required this.leading,
    required this.title,
  });

  final Widget leading;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical:8),
      child: ListTile(
        leading: leading,
        title: Text(title,
          style: const TextStyle(
            fontSize:20,
          ),),
      ),
    );
  }
}