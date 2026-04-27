import 'package:flutter/material.dart';

class MyPageFlexBanner extends StatelessWidget {
  const MyPageFlexBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(12, 10, 12, 0),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(color: const Color(0xFF1A1A2E), borderRadius: BorderRadius.circular(14), border: Border.all(color: const Color(0xFF333333))),
      child: Row(
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('코박 플렉스', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color: Colors.white)),
              SizedBox(height: 4),
              Text('코박과 새로운 기능들\n을 확인해보세요', style: TextStyle(fontSize: 10, color: Color(0xFFAAAAAA), height: 1.5)),
            ],
          ),
          const Spacer(),
          Container(
            width: 70, height: 70,
            decoration: BoxDecoration(color: const Color(0xFF2A2A4A), borderRadius: BorderRadius.circular(8), border: Border.all(color: const Color(0xFF555555), style: BorderStyle.solid)),
            child: const Center(child: Text('3D\n이미지', style: TextStyle(fontSize: 10, color: Color(0xFF777777)), textAlign: TextAlign.center)),
          ),
        ],
      ),
    );
  }
}
