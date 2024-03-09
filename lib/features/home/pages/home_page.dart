import 'package:flutter/material.dart';

import '../widgets/popular_job_section.dart';
import '../widgets/recent_post_section.dart';
import '../widgets/search_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // drawer: const NavigationDrawer(),
        body: SingleChildScrollView(
          reverse: true,
          child: Container(
            padding: EdgeInsets.all(8),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SearchSection(),
                PopularJobSection(),
                RecentPostSection()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

