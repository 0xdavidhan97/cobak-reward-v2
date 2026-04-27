import 'package:flutter/material.dart';

class MyPageMenuSection extends StatelessWidget {
  final String title;
  final List<Map<String, dynamic>> items;

  const MyPageMenuSection({super.key, required this.title, required this.items});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(12, 8, 12, 0),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(14), border: Border.all(color: const Color(0xFFE0E0E0))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 10, 16, 6),
            child: Text(title, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Color(0xFF999999))),
          ),
          ...items.asMap().entries.map((entry) {
            final item = entry.value;
            return Column(
              children: [
                const Divider(height: 1, thickness: 1, color: Color(0xFFF0F0F0)),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 11),
                  child: Row(
                    children: [
                      Text(item['icon'] as String, style: const TextStyle(fontSize: 16)),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(item['label'] as String, style: const TextStyle(fontSize: 13, color: Color(0xFF222222))),
                      ),
                      if (item['sub'] != null)
                        Text(item['sub'] as String, style: TextStyle(fontSize: 10, color: item['subColor'] as Color? ?? const Color(0xFF999999))),
                      const SizedBox(width: 4),
                      const Text('›', style: TextStyle(color: Color(0xFFCCCCCC), fontSize: 16)),
                    ],
                  ),
                ),
              ],
            );
          }),
        ],
      ),
    );
  }
}
