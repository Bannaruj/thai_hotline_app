import 'package:flutter/material.dart';

class SubAIntroductionCallUI extends StatefulWidget {
  const SubAIntroductionCallUI({super.key});

  @override
  State<SubAIntroductionCallUI> createState() => _SubAIntroductionCallUIState();
}

class _SubAIntroductionCallUIState extends State<SubAIntroductionCallUI> {
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
                    'เมื่อต้องเดินทางทั้งในเมือง ออกต่างจังหวัด\nจะใกล้หรือไกลเพียงใด\nสอบถามข้อมูลการเดินทาง การจราจร\nทางด่วน ทางหลัก ทางรอง\nเส้นทางเลี่ยงการจราจรติดขัด\nข้อมูลรถทัวร์ รถไฟ ขสมก. BTS MRT\n ชักช้าอยู่ใย',
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
              'สายด่วน\nการเดินทาง',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
            ),
          ],
        ),
      ),
    );
  }
}
