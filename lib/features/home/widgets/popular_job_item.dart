import 'package:flutter/material.dart';

class PopularJobItem extends StatelessWidget {
  const PopularJobItem({
    super.key, required this.title,
    required this.iconTitle,
    required this.image,

  });

  final String title;
  final String iconTitle;
  final Widget image;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 100,
      width: 250,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            spreadRadius: 2,
          ),
        ],
      ),
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              image,
              IconButton(
                  onPressed: (){},
                  icon: Image.asset('assets/images/favorite.png',
                    height: 50,
                    width: 50,
                  ),
                ),
            ],
          ),

          Text(iconTitle,
              style: const TextStyle(
                  color: Colors.black45,
              ),
          ),
          const SizedBox(height:15),
          Text(title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize:18,
            ),
          ),
          const SizedBox(height:15),
          const Row(
            children: [
              Text('\$2500/m',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('Toronto, Canada',
                style: TextStyle(
                    color: Colors.black45
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}