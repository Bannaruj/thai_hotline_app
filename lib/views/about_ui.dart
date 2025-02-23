import 'package:flutter/material.dart';

class AboutUI extends StatefulWidget {
  const AboutUI({super.key});

  @override
  State<AboutUI> createState() => _AboutUIState();
}

class _AboutUIState extends State<AboutUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffD9D9D9),
        title: Text(
          'สายด่วน Thailand',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            Text(
              'ผู้จัดทำ',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            Image.asset('assets/images/image1.png'),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            Text(
              'มหาวิทยาลัยเอเชียอาคเนย์',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assets/images/image2.png'),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            Text(
              '6652410030',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.width * 0.05),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.003),
            Text(
              'บรรณรุจน์ ลิ้มสมวงศ์',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.width * 0.05),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.003),
            Text(
              's6652410030@sau.ac.th',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.width * 0.05),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.003),
            Text(
              'DTI',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.width * 0.05),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.003),
            Text(
              'ศิลปศาสตร์และวิทยาศาสตร์',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.width * 0.05),
            ),
          ],
        ),
      ),
    );
  }
}
