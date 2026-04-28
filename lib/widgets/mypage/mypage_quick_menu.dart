import 'package:flutter/material.dart';

class MyPageQuickMenu extends StatelessWidget {
  const MyPageQuickMenu({super.key});

  static const _items = [
    {'emoji': '🚀', 'label': '내 스페이스'},
    {'emoji': '🎯', 'label': '미션'},
    {'emoji': '✅', 'label': '출석체크'},
    {'emoji': '👛', 'label': '내 지갑'},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(16, 8, 16, 0),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: _items.map((item) => Column(
          children: [
            Container(
              width: 44, height: 44,
              decoration: BoxDecoration(
                color: const Color(0xFFF5F5F5),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(child: Text(item['emoji']!, style: const TextStyle(fontSize: 20))),
            ),
            const SizedBox(height: 7),
            Text(item['label']!, style: const TextStyle(fontSize: 11, color: Color(0xFF4A4F5A))),
          ],
        )).toList(),
      ),
    );
  }
}
