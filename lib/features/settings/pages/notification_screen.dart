import 'package:flutter/material.dart';
import 'package:project_18/features/settings/widgets/notification_list.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/BottomNavigation');
                          },
                          icon: const Icon(Icons.arrow_back_ios)),
                      const Text(
                        "Notification",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        width: 60,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      NotificationList(
                        title: "New Post",
                        subtitle: "If any new post",
                        value: true,
                      ),
                      NotificationList(
                        title: "Got Hired",
                        subtitle: "If you got hired by any company",
                        value: true,
                      ),
                      NotificationList(
                        title: "Got rejected",
                        subtitle: "If you got rejected by any company",
                        value: false,
                      ),
                      NotificationList(
                        title: "Message",
                        subtitle: "Got any new message?",
                        value: false,
                      ),
                      NotificationList(
                        title: "Call",
                        subtitle: "Have a call",
                        value: false,
                      ),
                      NotificationList(
                        title: "Dark mode",
                        subtitle: "Enable dark theme",
                        value: false,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
    );
  }
}

