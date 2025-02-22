import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:thai_hotline_app/views/sub_a_home_ui.dart';
import 'package:thai_hotline_app/views/sub_a_introduction_call_ui.dart';
import 'package:thai_hotline_app/views/sub_b_introduction_call_ui.dart';
import 'package:thai_hotline_app/views/sub_c_introduction_call_ui.dart';
import 'package:thai_hotline_app/views/sub_d_introduction_call_ui.dart';

class IntroductionCallUI extends StatefulWidget {
  const IntroductionCallUI({super.key});

  @override
  State<IntroductionCallUI> createState() => _IntroductionCallUIState();
}

class _IntroductionCallUIState extends State<IntroductionCallUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: [
          PageViewModel(
            title: '',
            bodyWidget: Builder(builder: (BuildContext context) {
              return const SubAIntroductionCallUI();
            }),
          ),
          PageViewModel(
            title: '',
            bodyWidget: Builder(builder: (BuildContext context) {
              return const SubBIntroductionCallUI();
            }),
          ),
          PageViewModel(
            title: '',
            bodyWidget: Builder(builder: (BuildContext context) {
              return const SubCIntroductionCallUI();
            }),
          ),
          PageViewModel(
            title: '',
            bodyWidget: Builder(builder: (BuildContext context) {
              return const SubDIntroductionCallUI();
            }),
          ),
        ],
        showSkipButton: true,
        skip: Text(
          'ข้าม',
        ),
        showNextButton: true,
        next: Icon(
          Icons.arrow_forward_ios,
        ),
        showDoneButton: true,
        done: Text('หน้าหลัก'),
        onDone: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SubAHomeUI(),
            ),
          );
        },
        scrollPhysics: ClampingScrollPhysics(),
      ),
    );
  }
}
