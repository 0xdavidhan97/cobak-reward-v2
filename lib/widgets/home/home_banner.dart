import 'package:flutter/material.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(12, 12, 12, 0),
      padding: const EdgeInsets.fromLTRB(16, 18, 12, 10),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(14), border: Border.all(color: const Color(0xFFE0E0E0))),
      child: Row(
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('코박을', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Color(0xFF111111))),
              Text('안전하게', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Color(0xFF111111))),
            ],
          ),
          const Spacer(),
          Container(
            width: 90,
            height: 90,
            decoration: BoxDecoration(color: Colors.grey[200], borderRadius: BorderRadius.circular(8), border: Border.all(color: Colors.grey[300]!, style: BorderStyle.solid)),
            child: Center(child: Text('3D\n캐릭터\n이미지', style: TextStyle(fontSize: 10, color: Colors.grey[500]), textAlign: TextAlign.center)),
          ),
        ],
      ),
    );
  }
}
