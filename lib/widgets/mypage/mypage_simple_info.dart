import 'package:flutter/material.dart';

class MyPageSimpleInfo extends StatelessWidget {
  const MyPageSimpleInfo({super.key});

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
          const Text('내 간단 정보', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color: Color(0xFF1B1E26))),
          const SizedBox(height: 14),
          Row(
            children: const [
              _StatItem(label: '게시글', value: '12'),
              _Divider(),
              _StatItem(label: '댓글', value: '38'),
              _Divider(),
              _StatItem(label: '팔로워', value: '4'),
              _Divider(),
              _StatItem(label: '팔로잉', value: '6'),
            ],
          ),
          const SizedBox(height: 16),
          const Divider(height: 1, thickness: 1, color: Color(0xFFEEEEEE)),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('포인트', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700, color: Color(0xFF1B1E26))),
              Text('57,431P', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700, color: Color(0xFF3E77DA))),
            ],
          ),
          const SizedBox(height: 10),
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: const LinearProgressIndicator(
              value: 0.6,
              minHeight: 8,
              backgroundColor: Color(0xFFE5E7EB),
              valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF3E77DA)),
            ),
          ),
          const SizedBox(height: 6),
          const Text('다음 등급까지 2,569P 남았습니다', style: TextStyle(fontSize: 10, color: Color(0xFF4A4F5A))),
          const SizedBox(height: 16),
          const Divider(height: 1, thickness: 1, color: Color(0xFFEEEEEE)),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('코박 레벨', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700, color: Color(0xFF1B1E26))),
              Text('LV.40', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700, color: Color(0xFF3E77DA))),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              const Text('LV.40', style: TextStyle(fontSize: 10, color: Color(0xFF4A4F5A))),
              const SizedBox(width: 8),
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: const LinearProgressIndicator(
                    value: 0.78,
                    minHeight: 8,
                    backgroundColor: Color(0xFFE5E7EB),
                    valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF3E77DA)),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              const Text('LV.41', style: TextStyle(fontSize: 10, color: Color(0xFF3E77DA), fontWeight: FontWeight.w700)),
            ],
          ),
        ],
      ),
    );
  }
}

class _StatItem extends StatelessWidget {
  final String label;
  final String value;

  const _StatItem({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Text(value, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: Color(0xFF1B1E26))),
          const SizedBox(height: 3),
          Text(label, style: const TextStyle(fontSize: 10, color: Color(0xFF4A4F5A))),
        ],
      ),
    );
  }
}

class _Divider extends StatelessWidget {
  const _Divider();

  @override
  Widget build(BuildContext context) {
    return Container(width: 1, height: 32, color: const Color(0xFFEEEEEE));
  }
}
