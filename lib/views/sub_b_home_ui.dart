import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SubBHomeUI extends StatefulWidget {
  const SubBHomeUI({super.key});

  @override
  State<SubBHomeUI> createState() => _SubBHomeUIState();
}

final List<String> hotlineaccidentpic = [
  'assets/icons/sub_b1.png',
  'assets/icons/sub_b2.png',
  'assets/icons/sub_b1.png',
  'assets/icons/sub_b3.png',
  'assets/icons/sub_b4.png',
  'assets/icons/sub_b5.png',
  'assets/icons/sub_b6.png',
  'assets/icons/sub_b7.png',
  'assets/icons/sub_b8.png',
];

final List<String> hotlineaccidenttext = [
  'เหตุด่วน เหตุร้าย',
  'แจ้งไฟไหม้ สัตว์เข้าบ้าน',
  'สายด่วนรถหาย(ตำรวจแห่งชาติ)',
  'อุบัติเหตุทางน้ำ',
  'แจ้งคนหาย',
  'ศูนย์ปลอดภัยคมนาคม',
  'หน่วยแพทย์กู้ชีพ',
  'ศูนย์เอราวัณ',
  'เจ็บป่วยฉุกเฉิน',
];

final List<String> hotlineaccidenttel = [
  '191',
  '199',
  '1192',
  '1196',
  '1300',
  '1356',
  '1554',
  '1646',
  '1669',
];

Future<void> _makePhoneCall(String phoneNumber) async {
  final Uri launchUri = Uri(scheme: 'tel', path: phoneNumber);
  await launchUrl(launchUri);
}

class _SubBHomeUIState extends State<SubBHomeUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.027),
            Text(
              'สายด่วน\nการเดินทาง',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.of(context).size.width * 0.06,
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.015),
            Image.asset('assets/images/image1.png'),
            SizedBox(height: MediaQuery.of(context).size.height * 0.027),
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: hotlineaccidentpic.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () => _makePhoneCall(hotlineaccidenttel[index]),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.09,
                          margin: EdgeInsets.only(
                            bottom: MediaQuery.of(context).size.height * 0.02,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  hotlineaccidentpic[index],
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  width:
                                      MediaQuery.of(context).size.width * 0.1,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        hotlineaccidenttext[index],
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        hotlineaccidenttel[index],
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 13, right: 10),
                                  child: Icon(Icons.call),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
