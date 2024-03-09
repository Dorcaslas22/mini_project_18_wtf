import 'package:flutter/material.dart';
import 'package:project_18/features/settings/widgets/application_list.dart';

class ApplicationScreen extends StatelessWidget {
  const ApplicationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: const Text("Applications"),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          const Text("Your Application",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20
            ),),
          ApplicationList(
            image: Image.asset('assets/images/facebook_3.png',
              height: 50,
              width: 50,
            ),
            text1: 'FaceBook',
            text3: 'Toronto, Canada',
            buttonColor: Colors.blue.shade100,
            btnTextColor: Colors.blue,
            lastText: '\$45000 Monthly',
            buttonText: 'Delivered',
            textColor: Colors.blue,
          ),

          ApplicationList(
            image: IconButton(
              onPressed: () {  },
              style: IconButton.styleFrom(
                  backgroundColor: Colors.pink.shade100,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                  ),
              ),
              icon: Image.asset('assets/images/dribble_3.png',
                width:30,
                height: 30,
              ),
            ),
            text1: 'Dribble',
            text2: 'Visual Designer',
            buttonColor: Colors.pink.shade100,
            btnTextColor: Colors.pink,
            buttonText: 'Delivered',
            textColor: Colors.pink,
          ),
          ApplicationList(
            image: IconButton(
              onPressed: () {  },
              style: IconButton.styleFrom(
                  backgroundColor: Colors.grey.shade100,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                  )
              ),
              icon: Image.asset('assets/images/google_5.png',
                width:30,
                height: 30,),

            ),
            text1: 'Google',
            buttonColor: Colors.grey.shade100,
            btnTextColor: Colors.blue,
            buttonText: 'Pending',
            textColor: Colors.blue,
          ),
          ApplicationList(
            image: Image.asset('assets/images/spotify_5.png',
              width:30,
              height: 30,
            ),
            text1: 'Shopify',
            buttonColor: Colors.green.shade100,
            btnTextColor: Colors.green,
            buttonText: 'Pending',
            textColor: Colors.green,
          ),
        ],
      ),
    );
  }
}