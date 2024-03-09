import 'package:flutter/material.dart';
import 'package:project_18/features/settings/pages/application_screen.dart';
import 'package:project_18/features/settings/pages/notification_screen.dart';
import 'package:project_18/features/settings/widgets/setting_list.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Container(
          margin: EdgeInsets.symmetric(vertical:8),
          child: ListView(
            padding: EdgeInsets.all(10),
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/face_10.png'),
                    radius: 60,
                  ),
                  SizedBox(height:16),
                  const Text('Adom Shaffi',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),),
                  const Text('hello besnik@gmail.com',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black45,
                    ),),
                  const SizedBox(height: 10),
                  SettingList(
                    leading: IconButton(
                      onPressed: (){},
                      style: IconButton.styleFrom(
                          backgroundColor: Color(0xFFFFF5441)
                      ),
                      icon: const Icon(Icons.person,
                        color: Colors.white,
                      ),
                    ),
                    title: 'Edit Profile',
                  ),
                  SettingList(
                    leading: IconButton(
                      onPressed: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context){
                                  return const ApplicationScreen();
                                })
                        );
                      },
                      style: IconButton.styleFrom(
                          backgroundColor: Color(0xFFFFF9087)
                      ),
                      icon: const Icon(Icons.access_time_outlined,
                        color: Colors.white,
                      ),
                    ),
                    title: 'Applications (8)',
                  ),
                  SettingList(
                    leading: IconButton(
                      onPressed: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context){
                              return const NotificationScreen();
                            }));
                      },
                      style: IconButton.styleFrom(
                          backgroundColor: Color(0xFFF2CB9B5)
                      ),
                      icon: const Icon(Icons.settings,
                        color: Colors.white,
                      ),
                    ),
                    title: 'Notifications Settings',
                  ),
                  SettingList(
                    leading: IconButton(
                      onPressed: (){},
                      style: IconButton.styleFrom(
                          backgroundColor: Color(0xFFFFE33BF)
                      ),
                      icon: const Icon(Icons.share,
                        color: Colors.white,
                      ),
                    ),
                    title: 'Share App',
                  ),
                  const SizedBox(height: 40),
                  SettingList(
                    leading: IconButton(
                      onPressed: (){},
                      style: IconButton.styleFrom(
                          backgroundColor: Color(0xFFFFF454B)
                      ),
                      icon: const Icon(Icons.logout_outlined,
                        color: Colors.white,
                      ),
                    ),
                    title: 'Logout',
                  ),
                  const SizedBox(height: 30),
                ],
              ),

            ],
          ),
        )
    );
  }
}