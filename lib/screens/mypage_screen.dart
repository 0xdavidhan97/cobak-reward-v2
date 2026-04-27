import 'package:flutter/material.dart';
import '../widgets/mypage/mypage_flex_banner.dart';
import '../widgets/mypage/mypage_quick_menu.dart';
import '../widgets/mypage/mypage_profile.dart';
import '../widgets/mypage/mypage_points.dart';
import '../widgets/mypage/mypage_menu_section.dart';
import '../widgets/mypage/mypage_level_bar.dart';

class MyPageScreen extends StatelessWidget {
  const MyPageScreen({super.key});

  static final _menuSections = [
    {
      'title': '활동 내역',
      'items': [
        {'icon': '📝', 'label': '내 게시글'},
        {'icon': '📚', 'label': '내 강좌'},
        {'icon': '✅', 'label': '체크'},
        {'icon': '🕐', 'label': '최근 본 게시물'},
        {'icon': '💬', 'label': '내가 남긴 댓글 🔥'},
        {'icon': '⭐', 'label': '관심 코인'},
        {'icon': '👥', 'label': '추천인 내역'},
        {'icon': '🎁', 'label': '프로모션 내역'},
      ],
    },
    {
      'title': '코박 서비스',
      'items': [
        {'icon': '🛡️', 'label': '서포트오스 선생', 'sub': '초용 숨지 해제 →', 'subColor': const Color(0xFF2563EB)},
        {'icon': '📋', 'label': '지원 신청', 'sub': '수주 숨지 해제 →', 'subColor': const Color(0xFFEF4444)},
        {'icon': '🧰', 'label': '툴박스'},
        {'icon': '📧', 'label': '무제 뉴스레터'},
      ],
    },
    {
      'title': '설정 및 코박지인',
      'items': [
        {'icon': '🔒', 'label': '계정 및 보안'},
        {'icon': '📣', 'label': '공지하기'},
        {'icon': '📄', 'label': '약관 및 정책'},
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F7),
      body: SafeArea(
        child: Column(
          children: [
            // 헤더
            Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(Icons.arrow_back_ios, size: 18, color: Color(0xFF333333)),
                  ),
                  const SizedBox(width: 12),
                  const Text('마이', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Color(0xFF111111))),
                ],
              ),
            ),
            const Divider(height: 1, thickness: 1, color: Color(0xFFE0E0E0)),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const MyPageFlexBanner(),
                    const MyPageQuickMenu(),
                    const MyPageProfile(),
                    const MyPagePoints(),
                    // 코박 플렉스 왕관 배너
                    Container(
                      margin: const EdgeInsets.fromLTRB(12, 8, 12, 0),
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                      decoration: BoxDecoration(color: const Color(0xFF1A1A2E), borderRadius: BorderRadius.circular(14), border: Border.all(color: const Color(0xFF333333))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                            decoration: BoxDecoration(color: const Color(0xFF2563EB), borderRadius: BorderRadius.circular(20)),
                            child: const Text('치린완이', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Colors.white)),
                          ),
                          Container(
                            width: 60, height: 50,
                            decoration: BoxDecoration(color: const Color(0xFF2A2A4A), borderRadius: BorderRadius.circular(8), border: Border.all(color: const Color(0xFF555555))),
                            child: const Center(child: Text('👑', style: TextStyle(fontSize: 22))),
                          ),
                        ],
                      ),
                    ),
                    ..._menuSections.map((section) => MyPageMenuSection(
                      title: section['title'] as String,
                      items: (section['items'] as List).cast<Map<String, dynamic>>(),
                    )),
                    const MyPageLevelBar(),
                    const SizedBox(height: 24),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
