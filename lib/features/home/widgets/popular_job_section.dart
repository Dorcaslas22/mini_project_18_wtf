import 'package:flutter/material.dart';
import 'package:project_18/features/home/widgets/popular_job_item.dart';

class PopularJobSection extends StatelessWidget {
  const PopularJobSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Popular Job',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ) ,
              Text('show all',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black45
                ),
              ),
            ],
          ),
          SizedBox(
            height: 250,
            child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children:[
                  PopularJobItem(
                    image: IconButton(
                      onPressed: () {},
                      style: IconButton.styleFrom(
                          backgroundColor: Color(0xFFE4F2FF),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                          ),
                      ),
                      icon: Image.asset('assets/images/google_5.png',
                        width:40,
                        height: 40,
                      ),
                    ),
                    title: 'Lead Product Manager',
                    iconTitle: 'Google',
                  ),
                  PopularJobItem(
                    image: IconButton(
                      onPressed: () {},
                      style: IconButton.styleFrom(
                        backgroundColor: Color(0xFFE4F2FF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      icon: Image.asset('assets/images/spotify_5.png',
                        width:40,
                        height: 40,
                      ),
                    ),
                    title: 'Senior UI Design lead',
                    iconTitle: 'Shopify',
                  ),
                ],
            ),
          ),
        ],
      ),
    );
  }
}