import 'package:flutter/material.dart';

class RecentPostItem extends StatelessWidget {
  const RecentPostItem({
    super.key, required this.leadingIcon, required this.title,
  });
  final Widget leadingIcon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical:8),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 8,
              spreadRadius: 2,
            ),
          ],
      ),
      child: ListTile(
        leading: leadingIcon,
        title: Text(title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        subtitle: const Text('Full Time'),
        trailing: const Text('\$4500/m',
          style: TextStyle(
              fontSize: 14,
            color: Colors.black38,
          ),
        ),
      ),
    );
  }
}