import 'package:flutter/material.dart';

class MyPageFlexBanner extends StatelessWidget {
  const MyPageFlexBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(12, 10, 12, 0),
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        image: const DecorationImage(
          image: AssetImage('assets/images/mypage_banner.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            '코박 툴박스',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
