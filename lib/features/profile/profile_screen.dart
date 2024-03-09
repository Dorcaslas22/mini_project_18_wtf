import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
            "Profile",
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/face_10.png'),
                  radius: 40,
                ),
                SizedBox(height: 5),
                Text('Adom Shaffi',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 24,
                  ),),
                Text('Edit Profile',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black45,
                  ),),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Name'),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Adom Shaffi",
                      hintStyle: const TextStyle(
                          fontWeight: FontWeight.w500,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                      ),
                  ),
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(height: 10),
                const Text(
                  "Your Email",
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "hello besnik@gmail.com",
                      hintStyle: const TextStyle(
                          fontWeight: FontWeight.w500,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                      ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 10),
                const Text(
                    "Password",
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "************",
                      hintStyle: const TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                      ),
                  ),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF4CA6A8),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minimumSize: Size(MediaQuery.of(context).size.width * 0.9, 55),
                  ),
                  child: const Text('Save Now'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}