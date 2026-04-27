import 'package:flutter/material.dart';
import '../widgets/cobak_app_bar.dart';
import '../widgets/home/home_banner.dart';
import '../widgets/home/home_stats_row.dart';
import '../widgets/home/home_service_icons.dart';
import '../widgets/home/home_ranking.dart';
import '../widgets/home/home_news.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F7),
      body: SafeArea(
        child: Column(
          children: [
            const CobakAppBar(),
            const Divider(height: 1, thickness: 1, color: Color(0xFFE0E0E0)),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: const [
                    HomeBanner(),
                    HomeStatsRow(),
                    HomeServiceIcons(),
                    HomeRanking(),
                    HomeNews(),
                    SizedBox(height: 24),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
