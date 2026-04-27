import 'package:flutter/material.dart';
import '../screens/mypage_screen.dart';

class CobakAppBar extends StatefulWidget {
  const CobakAppBar({super.key});

  @override
  State<CobakAppBar> createState() => _CobakAppBarState();
}

class _CobakAppBarState extends State<CobakAppBar> {
  OverlayEntry? _overlayEntry;

  void _showProfileMenu(BuildContext context) {
    _overlayEntry = OverlayEntry(
      builder: (_) => Stack(
        children: [
          Positioned.fill(
            child: GestureDetector(
              onTap: _hideProfileMenu,
              behavior: HitTestBehavior.opaque,
              child: const ColoredBox(color: Colors.transparent),
            ),
          ),
          Positioned(
            top: 62,
            right: 16,
            child: Material(
              elevation: 12,
              borderRadius: BorderRadius.circular(14),
              shadowColor: Colors.black26,
              child: Container(
                width: 200,
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(14)),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _buildProfileHeader(),
                    const Divider(height: 1, thickness: 1),
                    _buildMenuItem(label: '마이페이지 이동', onTap: () {
                      _hideProfileMenu();
                      Navigator.push(context, MaterialPageRoute(builder: (_) => const MyPageScreen()));
                    }),
                    _buildMenuItem(label: '내 스페이스 이동', onTap: _hideProfileMenu),
                    _buildMenuItem(label: '계정 및 보안', onTap: _hideProfileMenu),
                    const Divider(height: 1, thickness: 1),
                    _buildMenuItem(label: '로그아웃', onTap: _hideProfileMenu, isDestructive: true),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
    Overlay.of(context).insert(_overlayEntry!);
  }

  void _hideProfileMenu() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  @override
  void dispose() {
    _overlayEntry?.remove();
    super.dispose();
  }

  Widget _buildProfileHeader() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(14, 14, 14, 12),
      child: Row(
        children: [
          CircleAvatar(
            radius: 22,
            backgroundColor: Colors.grey[200],
            child: const Icon(Icons.person, size: 26, color: Colors.grey),
          ),
          const SizedBox(width: 10),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('내 프로필', style: TextStyle(fontSize: 11, color: Color(0xFF2563EB), fontWeight: FontWeight.w500)),
              SizedBox(height: 2),
              Text('코박코박', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black87)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem({required String label, required VoidCallback onTap, bool isDestructive = false}) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 13),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(label, style: TextStyle(fontSize: 14, color: isDestructive ? Colors.red : Colors.black87)),
            Icon(Icons.chevron_right, size: 18, color: isDestructive ? Colors.red[300] : Colors.grey[400]),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        children: [
          Image.asset('assets/images/cobak_logo.png', width: 36, height: 36),
          const Spacer(),
          IconButton(icon: const Icon(Icons.search, color: Colors.black87), onPressed: () {}, padding: EdgeInsets.zero, constraints: const BoxConstraints(minWidth: 36, minHeight: 36)),
          const SizedBox(width: 4),
          IconButton(icon: const Icon(Icons.notifications_outlined, color: Colors.black87), onPressed: () {}, padding: EdgeInsets.zero, constraints: const BoxConstraints(minWidth: 36, minHeight: 36)),
          const SizedBox(width: 4),
          IconButton(icon: const Icon(Icons.smart_toy_outlined, color: Colors.black87), onPressed: () {}, padding: EdgeInsets.zero, constraints: const BoxConstraints(minWidth: 36, minHeight: 36)),
          const SizedBox(width: 4),
          GestureDetector(
            onTap: () => _showProfileMenu(context),
            child: CircleAvatar(radius: 16, backgroundColor: Colors.grey[300], child: const Icon(Icons.person, size: 18, color: Colors.grey)),
          ),
        ],
      ),
    );
  }
}
