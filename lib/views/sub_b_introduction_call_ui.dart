import 'package:flutter/material.dart';

class SubBIntroductionCallUI extends StatefulWidget {
  const SubBIntroductionCallUI({super.key});

  @override
  State<SubBIntroductionCallUI> createState() => _SubBIntroductionCallUIState();
}

class _SubBIntroductionCallUIState extends State<SubBIntroductionCallUI> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset(
            'assets/images/image1.png',
            height: MediaQuery.of(context).size.height * 0.4,
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.04),
          Text.rich(
            TextSpan(
              text:
                  'อุบัติเหตุ ป่วยฉุกเฉิน  ไฟใหม้\nรถหาย สัตว์ร้านเข้าบ้าน\nทุกอย่างเกินขึ้นได้ตลอดเวลา\nจะดีกว่าไหม\nเมื่อพบเจออุบัติเหตุ เหตุด่วน เหตุร้าน\nสามารโทรแจ้งได้ทันท่วงที\nไม่ต้องรอ ',
              children: [
                TextSpan(
                  text: "โทรเลย!!!",
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.04),
          Text(
            'สายด่วน\nอุบัติเหตุ-เหตุฉุกเฉิน',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
