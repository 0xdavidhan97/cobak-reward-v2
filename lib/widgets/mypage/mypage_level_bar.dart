import 'package:flutter/material.dart';

class MyPageLevelBar extends StatelessWidget {
  const MyPageLevelBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(12, 8, 12, 0),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(14), border: Border.all(color: const Color(0xFFE0E0E0))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('코박 경장이', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700, color: Color(0xFF111111))),
          const SizedBox(height: 6),
          const Text('다음 레벨까지 이런 달성이 남았습니다', style: TextStyle(fontSize: 10, color: Color(0xFF999999))),
          const SizedBox(height: 8),
          Row(
            children: [
              const SizedBox(width: 32, child: Text('LV.40', style: TextStyle(fontSize: 11, color: Color(0xFF999999)))),
              const SizedBox(width: 8),
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: LinearProgressIndicator(
                    value: 0.78,
                    minHeight: 10,
                    backgroundColor: const Color(0xFFE5E7EB),
                    valueColor: const AlwaysStoppedAnimation<Color>(Color(0xFF2563EB)),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              const Text('LV.41', style: TextStyle(fontSize: 11, color: Color(0xFF2563EB), fontWeight: FontWeight.w700)),
            ],
          ),
          const SizedBox(height: 6),
          const Align(
            alignment: Alignment.centerRight,
            child: Text('19,380+', style: TextStyle(fontSize: 11, color: Color(0xFF2563EB), fontWeight: FontWeight.w700)),
          ),
        ],
      ),
    );
  }
}
