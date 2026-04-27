import 'package:flutter/material.dart';

class HomeStatsRow extends StatelessWidget {
  const HomeStatsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.fromLTRB(12, 10, 12, 0),
      child: Row(
        children: const [
          _StatCard(emoji: '🔥', title: '공포탐욕지수', value: '47%', subtitle: '중립', subtitleColor: Color(0xFFF59E0B)),
          SizedBox(width: 8),
          _StatCard(emoji: '🌶️', title: '김치프리미엄', value: '0.69%', subtitle: '정상', subtitleColor: Color(0xFF22C55E)),
          SizedBox(width: 8),
          _StatCard(emoji: '₿', title: '비트코인', value: '116,955', subtitle: '300,000원↑', subtitleColor: Color(0xFFEF4444), minWidth: 120),
        ],
      ),
    );
  }
}

class _StatCard extends StatelessWidget {
  final String emoji;
  final String title;
  final String value;
  final String subtitle;
  final Color subtitleColor;
  final double minWidth;

  const _StatCard({
    required this.emoji,
    required this.title,
    required this.value,
    required this.subtitle,
    required this.subtitleColor,
    this.minWidth = 110,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(minWidth: minWidth),
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: const Color(0xFFE0E0E0)),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('$emoji $title', style: const TextStyle(fontSize: 10, color: Color(0xFF666666))),
          const SizedBox(height: 2),
          Text(value, style: TextStyle(fontSize: value.length > 6 ? 16 : 20, fontWeight: FontWeight.w700, color: const Color(0xFF111111))),
          const SizedBox(height: 2),
          Text(subtitle, style: TextStyle(fontSize: 11, color: subtitleColor)),
        ],
      ),
    );
  }
}
