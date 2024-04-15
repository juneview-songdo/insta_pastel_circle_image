import 'package:flutter/material.dart';

import '../../../../../../../../main.dart';
import '_/state_child.dart';
import '_/state_mother.dart';

class NewView extends StatefulWidget {
  NewView({super.key});

  @override
  State<NewView> createState() => StateChild();
}

class NewViewState extends State<NewView> with StateMother {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,  // 전체 컨테이너의 크기
      height: 100,  // 전체 컨테이너의 크기
      padding: EdgeInsets.all(3),  // 테두리의 너비를 조정
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: SweepGradient(
          startAngle: 0.0,
          endAngle: 6.28319,  // 2*PI 값 (360도)
          colors: [
            Color(0xFFF58529),  // 따뜻한 오렌지
            Color(0xFFFEDA77),  // 밝은 금색
            Color(0xFFDD2A7B),  // 강렬한 핑크
            Color(0xFFC71585),  // 중간 마젠타, 보라와 핑크 사이
            Color(0xFF8134AF),  // 진한 보라색
            Color(0xFF515BD4),  // 연한 파란색
            Color(0xFFF58529),  // 따뜻한 오렌지 반복
          ],
          stops: [0.0, 0.17, 0.34, 0.51, 0.68, 0.85, 1.0],
        ),
      ),
      child: CircleAvatar(
        radius: 48,  // 내부 CircleAvatar의 크기
        backgroundColor: Colors.white,  // 내부 배경색 설정 (필요에 따라 변경 가능)
        child: CircleAvatar(
          radius: 45,  // 더 작은 CircleAvatar로 이미지를 넣을 공간 확보
          backgroundImage: AssetImage('assets/view/insta_pastel_circle_image/iu.webp'),
        ),
      ),
    );
  }
}

main() async {
  return buildApp(appHome: NewView().center());
}