import 'package:flutter/material.dart';

class HomeServiceIcons extends StatelessWidget {
  const HomeServiceIcons({super.key});

  static const _services = [
    {'emoji': '📡', 'name': '라이브'},
    {'emoji': '⚡', 'name': '속보'},
    {'emoji': '🎯', 'name': '미션'},
    {'emoji': '📊', 'name': '시세조회'},
    {'emoji': '🧰', 'name': '툴박스'},
    {'emoji': '💼', 'name': '비즈니스'},
    {'emoji': '🏆', 'name': '랭킹'},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(12, 10, 12, 0),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(14), border: Border.all(color: const Color(0xFFE0E0E0))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('주요 서비스', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: Color(0xFF111111))),
          const SizedBox(height: 12),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: _services.map((s) => Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Column(
                  children: [
                    Container(
                      width: 44,
                      height: 44,
                      decoration: BoxDecoration(color: const Color(0xFFF0F0F0), shape: BoxShape.circle, border: Border.all(color: const Color(0xFFDDDDDD))),
                      child: Center(child: Text(s['emoji']!, style: const TextStyle(fontSize: 20))),
                    ),
                    const SizedBox(height: 6),
                    Text(s['name']!, style: const TextStyle(fontSize: 10, color: Color(0xFF555555))),
                  ],
                ),
              )).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
