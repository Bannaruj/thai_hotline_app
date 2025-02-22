import 'package:flutter/material.dart';

class SubCIntroductionCallUI extends StatefulWidget {
  const SubCIntroductionCallUI({super.key});

  @override
  State<SubCIntroductionCallUI> createState() => _SubCIntroductionCallUIState();
}

class _SubCIntroductionCallUIState extends State<SubCIntroductionCallUI> {
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
                    'เมื่อเงินคือสิ่งสำคัญสำหรับการดำเนินชีวิต\nกิน เที่ยว ซื้อสินค้า\nการเดินทาง การรักษาพยาบาล\nหรือโดนเหตุมิจฉาชีพ\nแก๊งคอลเซ็นเตอร์หลอกลวง\nสามารถติดต่อธนาคารโดยตรง\nได้เลย',
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
              'สายด่วน\nธนาคาร',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
            )
          ],
        ),
      ),
    );
  }
}
