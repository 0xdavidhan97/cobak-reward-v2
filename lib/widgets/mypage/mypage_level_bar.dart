import 'package:flutter/material.dart';

class MyPageLevelBar extends StatelessWidget {
  const MyPageLevelBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(16, 8, 16, 0),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('코박 경험치', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color: Color(0xFF1B1E26))),
          const SizedBox(height: 6),
          const Text('다음 레벨까지 19,380P 남았습니다', style: TextStyle(fontSize: 10, color: Color(0xFF4A4F5A))),
          const SizedBox(height: 12),
          Row(
            children: [
              const Text('LV.40', style: TextStyle(fontSize: 11, color: Color(0xFF4A4F5A))),
              const SizedBox(width: 8),
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: const LinearProgressIndicator(
                    value: 0.78,
                    minHeight: 10,
                    backgroundColor: Color(0xFFE5E7EB),
                    valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF3E77DA)),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              const Text('LV.41', style: TextStyle(fontSize: 11, color: Color(0xFF3E77DA), fontWeight: FontWeight.w700)),
            ],
          ),
          const SizedBox(height: 6),
          const Align(
            alignment: Alignment.centerRight,
            child: Text('19,380+ 달성시 레벨업', style: TextStyle(fontSize: 10, color: Color(0xFF3E77DA))),
          ),
        ],
      ),
    );
  }
}
