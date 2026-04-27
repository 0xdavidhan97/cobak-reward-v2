import 'package:flutter/material.dart';

class HomeRanking extends StatelessWidget {
  const HomeRanking({super.key});

  static const _rankings = [
    {'rank': 1, 'name': '월드코인', 'en': 'Worldcoin', 'change': null},
    {'rank': 2, 'name': '스토리', 'en': 'Story', 'change': null},
    {'rank': 3, 'name': '쑨', 'en': 'SOON', 'change': null},
    {'rank': 4, 'name': '드리프트', 'en': 'Drift', 'change': 'edit'},
    {'rank': 5, 'name': '레이본코인', 'en': 'Ravencoin', 'change': 'up'},
    {'rank': 6, 'name': '롬바드', 'en': 'Lombard', 'change': -1},
    {'rank': 7, 'name': '사인', 'en': 'Sign', 'change': -2},
    {'rank': 8, 'name': '스파크', 'en': 'Spark', 'change': 8},
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
          const Text('월간 검색 순위', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: Color(0xFF111111))),
          const SizedBox(height: 4),
          const Text('업비트·빗썸 2025 상장 · 국내 포털사이트 검색 기준', style: TextStyle(fontSize: 10, color: Color(0xFF999999))),
          const SizedBox(height: 8),
          ..._rankings.map((r) => _RankItem(item: r)),
          const SizedBox(height: 12),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(border: Border.all(color: const Color(0xFFDDDDDD)), borderRadius: BorderRadius.circular(8), color: const Color(0xFFFAFAFA)),
            child: const Center(child: Text('더보기', style: TextStyle(fontSize: 13, color: Color(0xFF555555)))),
          ),
        ],
      ),
    );
  }
}

class _RankItem extends StatelessWidget {
  final Map<String, dynamic> item;
  const _RankItem({required this.item});

  @override
  Widget build(BuildContext context) {
    final change = item['change'];

    Widget? changeBadge;
    if (change == 'edit' || change == 'up') {
      changeBadge = Container(
        width: 32, height: 32,
        decoration: const BoxDecoration(color: Color(0xFF2563EB), shape: BoxShape.circle),
        child: Center(child: Text(change == 'up' ? '▲' : '✏', style: const TextStyle(color: Colors.white, fontSize: 12))),
      );
    } else if (change is int && change < 0) {
      changeBadge = Text('▼${change.abs()}', style: const TextStyle(fontSize: 11, color: Color(0xFF3182CE)));
    } else if (change is int && change > 0) {
      changeBadge = Text('▲+$change', style: const TextStyle(fontSize: 11, color: Color(0xFFE53E3E)));
    } else {
      changeBadge = const Text('—', style: TextStyle(fontSize: 12, color: Color(0xFFCCCCCC)));
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          SizedBox(width: 16, child: Text('${item['rank']}', style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w700, color: Color(0xFF333333)))),
          const SizedBox(width: 10),
          Container(width: 32, height: 32, decoration: BoxDecoration(color: const Color(0xFFEEEEEE), shape: BoxShape.circle, border: Border.all(color: const Color(0xFFCCCCCC)))),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(item['name'] as String, style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600, color: Color(0xFF111111))),
                Text(item['en'] as String, style: const TextStyle(fontSize: 10, color: Color(0xFF999999))),
              ],
            ),
          ),
          changeBadge,
        ],
      ),
    );
  }
}
