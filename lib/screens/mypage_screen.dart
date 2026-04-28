import 'package:flutter/material.dart';
import '../widgets/mypage/mypage_flex_banner.dart';
import '../widgets/mypage/mypage_quick_menu.dart';
import '../widgets/mypage/mypage_profile.dart';
import '../widgets/mypage/mypage_simple_info.dart';
import '../widgets/mypage/mypage_menu_section.dart';
import '../widgets/mypage/mypage_level_bar.dart';

class MyPageScreen extends StatelessWidget {
  const MyPageScreen({super.key});

  static final _activityItems = [
    {'icon': '📝', 'label': '내 게시글'},
    {'icon': '📚', 'label': '내 강좌'},
    {'icon': '✅', 'label': '출석 체크'},
    {'icon': '🕐', 'label': '최근 본 게시물'},
    {'icon': '💬', 'label': '내가 남긴 댓글'},
    {'icon': '⭐', 'label': '관심 코인'},
    {'icon': '👥', 'label': '추천인 내역'},
    {'icon': '🎁', 'label': '프로모션 내역'},
  ];

  static final _serviceItems = [
    {'icon': '🛡️', 'label': '서포터스 신청'},
    {'icon': '📋', 'label': '지원 신청'},
    {'icon': '🧰', 'label': '툴박스'},
    {'icon': '📧', 'label': '코박 뉴스레터'},
  ];

  static final _settingItems = [
    {'icon': '🔒', 'label': '계정 및 보안'},
    {'icon': '📣', 'label': '공지사항'},
    {'icon': '📄', 'label': '약관 및 정책'},
    {'icon': '🙋', 'label': '고객 지원'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F3F3),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 13),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(Icons.arrow_back_ios, size: 18, color: Color(0xFF1B1E26)),
                  ),
                  const SizedBox(width: 12),
                  const Text('마이', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Color(0xFF1B1E26))),
                ],
              ),
            ),
            const Divider(height: 1, thickness: 1, color: Color(0xFFEEEEEE)),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const MyPageFlexBanner(),
                    const MyPageQuickMenu(),
                    const MyPageProfile(),
                    const MyPageSimpleInfo(),
                    _Banner2(),
                    MyPageMenuSection(title: '활동 내역', items: _activityItems.cast<Map<String, dynamic>>()),
                    MyPageMenuSection(title: '코박 서비스', items: _serviceItems.cast<Map<String, dynamic>>()),
                    MyPageMenuSection(title: '설정 및 고객 지원', items: _settingItems.cast<Map<String, dynamic>>()),
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

class _Banner2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(16, 8, 16, 0),
      height: 100,
      decoration: BoxDecoration(
        color: const Color(0xFFD9D9D9),
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Center(
        child: Text('Banner 2', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xFF4A4F5A))),
      ),
    );
  }
}
