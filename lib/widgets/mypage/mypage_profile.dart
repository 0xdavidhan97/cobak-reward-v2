import 'package:flutter/material.dart';

class MyPageProfile extends StatelessWidget {
  const MyPageProfile({super.key});

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
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 22,
                backgroundColor: const Color(0xFFD9D9D9),
                child: const Icon(Icons.person, size: 24, color: Colors.white),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        Text('코박코박', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color: Color(0xFF1B1E26))),
                        SizedBox(width: 4),
                        Text('›', style: TextStyle(fontSize: 18, color: Color(0xFF4A4F5A))),
                      ],
                    ),
                    const SizedBox(height: 3),
                    const Text('팔로워 4  ·  팔로잉 6', style: TextStyle(fontSize: 10, color: Color(0xFF4A4F5A))),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                decoration: BoxDecoration(
                  color: const Color(0xFF3E77DA),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text('지갑 연결', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Colors.white)),
              ),
            ],
          ),
          const SizedBox(height: 14),
          const Divider(height: 1, thickness: 1, color: Color(0xFFEEEEEE)),
          _menuRow('내 지갑'),
          const Divider(height: 1, thickness: 1, color: Color(0xFFEEEEEE)),
          _menuRow('자세히보기'),
        ],
      ),
    );
  }

  Widget _menuRow(String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        children: [
          Text(label, style: const TextStyle(fontSize: 13, color: Color(0xFF4A4F5A))),
          const Spacer(),
          const Text('›', style: TextStyle(fontSize: 18, color: Color(0xFF4A4F5A))),
        ],
      ),
    );
  }
}
