import 'package:flutter/material.dart';

class SubDIntroductionCallUI extends StatefulWidget {
  const SubDIntroductionCallUI({super.key});

  @override
  State<SubDIntroductionCallUI> createState() => _SubDIntroductionCallUIState();
}

class _SubDIntroductionCallUIState extends State<SubDIntroductionCallUI> {
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
                    'น้ำไม่ไหล\nไฟฟ้าดับ\nโทรไม่ติด\nอินเตอร์เน็ตมีปัญหา\nเข้า Social Media ไม่ได้\nรอไม่ได้',
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
              'สายด่วน\nสาธารณูปโภค',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
            ),
          ],
        ),
      ),
    );
  }
}
