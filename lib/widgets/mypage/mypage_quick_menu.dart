import 'package:flutter/material.dart';

class MyPageQuickMenu extends StatelessWidget {
  const MyPageQuickMenu({super.key});

  static const _items = [
    {'emoji': '🚀', 'label': '내 스페이스'},
    {'emoji': '🎯', 'label': '미션'},
    {'emoji': '📍', 'label': '플레이스'},
    {'emoji': '👛', 'label': '내 지갑'},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(12, 8, 12, 0),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(14), border: Border.all(color: const Color(0xFFE0E0E0))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: _items.map((item) => Column(
          children: [
            Container(
              width: 40, height: 40,
              decoration: BoxDecoration(color: const Color(0xFFF5F5F5), borderRadius: BorderRadius.circular(10), border: Border.all(color: const Color(0xFFCCCCCC))),
              child: Center(child: Text(item['emoji']!, style: const TextStyle(fontSize: 18))),
            ),
            const SizedBox(height: 6),
            Text(item['label']!, style: const TextStyle(fontSize: 10, color: Color(0xFF555555))),
          ],
        )).toList(),
      ),
    );
  }
}
