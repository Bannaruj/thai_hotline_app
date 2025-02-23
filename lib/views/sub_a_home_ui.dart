import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SubAHomeUI extends StatefulWidget {
  const SubAHomeUI({super.key});

  @override
  State<SubAHomeUI> createState() => _SubAHomeUIState();
}

final List<String> hotlinetravelpic = [
  'assets/icons/sub_a1.png',
  'assets/icons/sub_a2.png',
  'assets/icons/sub_a3.png',
  'assets/icons/sub_a4.png',
  'assets/icons/sub_a5.png',
  'assets/icons/sub_a6.png',
  'assets/icons/sub_a7.png',
  'assets/icons/sub_a8.png',
  'assets/icons/sub_a9.png',
];

final List<String> hotlinetraveltext = [
  'กรมทางหลวงชนบท',
  'ตำรวจท่องเที่ยว',
  'ตำรวจทางหลวง',
  'ข้อมูลจราจร',
  'ขสมก',
  'บขส',
  'เส้นทางบนทางด่วน',
  'กรมทางหลวง',
  'การรถไฟแห่งประเทศไทย',
];

final List<String> hotlinetraveltel = [
  '1146',
  '1155',
  '1193',
  '1197',
  '1348',
  '1490',
  '1543',
  '1586',
  '1690',
];

Future<void> _makePhoneCall(String phoneNumber) async {
  final Uri launchUri = Uri(scheme: 'tel', path: phoneNumber);
  await launchUrl(launchUri);
}

class _SubAHomeUIState extends State<SubAHomeUI> {
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
                  scrollDirection: Axis.vertical,
                  itemCount: hotlinetravelpic.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () => _makePhoneCall(hotlinetraveltel[index]),
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
                                  hotlinetravelpic[index],
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  width:
                                      MediaQuery.of(context).size.width * 0.09,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        hotlinetraveltext[index],
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        hotlinetraveltel[index],
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
