import 'package:flutter/material.dart';

class MyPagePoints extends StatelessWidget {
  const MyPagePoints({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(12, 8, 12, 0),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(14), border: Border.all(color: const Color(0xFFE0E0E0))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Text('🔵', style: TextStyle(fontSize: 16)),
                  SizedBox(width: 6),
                  Text('57,431P', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: Color(0xFF111111))),
                ],
              ),
              const Text('포인트 보기 →', style: TextStyle(fontSize: 11, color: Color(0xFF2563EB))),
            ],
          ),
          const SizedBox(height: 10),
          const Text('🔸 밋업 포인트 50P\n🔹 날짜 관련 항목\n🔸 소속 유저', style: TextStyle(fontSize: 10, color: Color(0xFF999999), height: 1.8)),
          const SizedBox(height: 6),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(color: const Color(0xFF2563EB), borderRadius: BorderRadius.circular(6)),
                child: const Text('50P', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Colors.white)),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: LinearProgressIndicator(
                    value: 0.6,
                    minHeight: 10,
                    backgroundColor: const Color(0xFFE5E7EB),
                    valueColor: const AlwaysStoppedAnimation<Color>(Color(0xFF2563EB)),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          const Text('스마트 패키지 관련 0소 1,840이 되면 수동 구입 예정', style: TextStyle(fontSize: 10, color: Color(0xFF999999))),
        ],
      ),
    );
  }
}
