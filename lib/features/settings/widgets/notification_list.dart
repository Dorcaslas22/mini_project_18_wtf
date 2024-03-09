import 'package:flutter/material.dart';

class NotificationList extends StatelessWidget {
  const NotificationList({
    super.key,
    required this.title,
    required this.subtitle,
    required this.value,
  });

  final String title;
  final String subtitle;
  final bool value;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:8),
      child: ListTile(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize:18,
                  fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              subtitle,
              style: const TextStyle(
                fontSize: 14,
                  color: Colors.black45,
              ),
            )
          ],
        ),
        trailing: SizedBox(
          width: 20,
          height: 20,
          child: Switch(
            value: value,
            onChanged: (value) {},
            activeColor: Color(0xFFF4CA6A8),
          ),
        ),
      ),
    );
  }
}