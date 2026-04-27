import 'package:flutter/material.dart';

class HomeNews extends StatefulWidget {
  const HomeNews({super.key});

  @override
  State<HomeNews> createState() => _HomeNewsState();
}

class _HomeNewsState extends State<HomeNews> {
  String _activeTab = 'latest';

  static const _gridNews = [
    {'text': '4월 밋업 점유율 30%대 폭전 \'상승세…서비스 고도화 됩니다', 'meta': '블록포스트 · 20분 전', 'coin': 'BTC +1.76%'},
    {'text': '이더리움, 한 달간 20% 폭등...2,500달러 근처 돌진', 'meta': '코인니스 · 32분 전', 'coin': 'ETH +2.11%'},
  ];

  static const _listNews = [
    {'text': '이란-오만, 호르무즈 해협 관련 전문가들 협의 계속', 'meta': '코인니스 · 5분 전'},
    {'text': '폴 앳킨스 \'강압적 규제는 끝\'…비트코인 8만 달러 돌파 열쇠 될까', 'meta': '코인니스 · 8분 전'},
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 10, 12, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('지금 주목할 뉴스', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: Color(0xFF111111))),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(padding: EdgeInsets.zero, minimumSize: Size.zero, tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                child: const Text('전체보기 →', style: TextStyle(fontSize: 11, color: Color(0xFF999999))),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              _TabButton(label: '최신뉴스', isActive: _activeTab == 'latest', onTap: () => setState(() => _activeTab = 'latest')),
              const SizedBox(width: 8),
              _TabButton(label: '인기뉴스', isActive: _activeTab == 'popular', onTap: () => setState(() => _activeTab = 'popular')),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: _gridNews.map((n) => Expanded(
              child: Padding(
                padding: EdgeInsets.only(right: n == _gridNews.last ? 0 : 8),
                child: _NewsCard(news: n),
              ),
            )).toList(),
          ),
          const SizedBox(height: 8),
          ..._listNews.map((n) => Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: _NewsListItem(news: n),
          )),
        ],
      ),
    );
  }
}

class _TabButton extends StatelessWidget {
  final String label;
  final bool isActive;
  final VoidCallback onTap;

  const _TabButton({required this.label, required this.isActive, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
        decoration: BoxDecoration(
          color: isActive ? const Color(0xFF111111) : Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: const Color(0xFF222222)),
        ),
        child: Text(label, style: TextStyle(fontSize: 12, color: isActive ? Colors.white : const Color(0xFF555555), fontWeight: FontWeight.w500)),
      ),
    );
  }
}

class _NewsCard extends StatelessWidget {
  final Map<String, String> news;
  const _NewsCard({required this.news});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10), border: Border.all(color: const Color(0xFFE0E0E0))),
      clipBehavior: Clip.hardEdge,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 80,
            color: const Color(0xFFCCCCCC),
            child: const Center(child: Icon(Icons.image_outlined, color: Colors.white, size: 28)),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(news['text']!, style: const TextStyle(fontSize: 11, color: Color(0xFF222222), height: 1.4), maxLines: 2, overflow: TextOverflow.ellipsis),
                const SizedBox(height: 4),
                Text(news['meta']!, style: const TextStyle(fontSize: 10, color: Color(0xFF999999))),
                Text(news['coin']!, style: const TextStyle(fontSize: 10, color: Color(0xFFE53E3E))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _NewsListItem extends StatelessWidget {
  final Map<String, String> news;
  const _NewsListItem({required this.news});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10), border: Border.all(color: const Color(0xFFE0E0E0))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(news['text']!, style: const TextStyle(fontSize: 12, color: Color(0xFF222222), height: 1.5)),
          const SizedBox(height: 4),
          Text(news['meta']!, style: const TextStyle(fontSize: 10, color: Color(0xFF999999))),
        ],
      ),
    );
  }
}
