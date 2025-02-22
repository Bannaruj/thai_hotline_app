import 'package:flutter/material.dart';

class SubBIntroductionCallUI extends StatefulWidget {
  const SubBIntroductionCallUI({super.key});

  @override
  State<SubBIntroductionCallUI> createState() => _SubBIntroductionCallUIState();
}

class _SubBIntroductionCallUIState extends State<SubBIntroductionCallUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.13,
            ),
            Image.asset(
              'assets/images/image1.png',
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.height * 0.2,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Text.rich(
              textAlign: TextAlign.center,
              TextSpan(
                text:
                    'อุบัติเหตุ ป่วยฉุกเฉิน ไฟไหม้\nรถหาย สัตว์ร้านเข้าบ้าน\nทุกอย่างเกิดขึ้นได้ตลอดเวลา\nจะดีกว่าไหม\nเมื่อพบเจออุบัติเหตุ เหตุด่วน เหตุร้าย\nสามารถโทรแจ้งได้ทันท่วงที\nไม่ต้องรอ',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                children: [
                  TextSpan(
                      text: ' โทรเลย!!',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.red)),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Text(
              'สายด่วน\nอุบัติเหตุ-เหตุฉุกเฉิน',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
            )
          ],
        ),
      ),
    );
  }
}
