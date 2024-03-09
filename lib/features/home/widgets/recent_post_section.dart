import 'package:flutter/material.dart';
import 'package:project_18/features/home/widgets/recent_post_item.dart';

class RecentPostSection extends StatelessWidget {
  const RecentPostSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Recent Posts',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),) ,
              Text('show all',),
            ],
        ),
        RecentPostItem(
          leadingIcon: Image.asset('assets/images/facebook_3.png',
            height: 50,
            width: 50,),
          title: 'UI/UX Designer',
        ),
        RecentPostItem(
            leadingIcon: Image.asset('assets/images/spotify_5.png',
              height: 50,
              width: 50,),
            title: 'Product Designer'),
        RecentPostItem(
            leadingIcon:Image.asset('assets/images/Netflix.png',
              height: 50,
              width: 50,) ,
            title: 'Visual Designer'),
      ],
    );
  }
}