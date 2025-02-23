import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SubCHomeUI extends StatefulWidget {
  const SubCHomeUI({super.key});

  @override
  State<SubCHomeUI> createState() => _SubCHomeUIState();
}

final List<String> hotlinebankpic = [
  'assets/icons/sub_c1.png',
  'assets/icons/sub_c2.png',
  'assets/icons/sub_c3.png',
  'assets/icons/sub_c4.png',
  'assets/icons/sub_c5.png',
  'assets/icons/sub_c6.png',
  'assets/icons/sub_c7.png',
  'assets/icons/sub_c8.png',
  'assets/icons/sub_c9.png',
  'assets/icons/sub_c10.png',
  'assets/icons/sub_c11.png',
  'assets/icons/sub_c12.png',
  'assets/icons/sub_c13.png',
  'assets/icons/sub_c14.png',
  'assets/icons/sub_c15.png',
  'assets/icons/sub_c16.png',
];

final List<String> hotlinebanktext = [
  'ธนาคารกรุงเทพ',
  'ธนาคารออมสิน',
  'ธนาคารกสิกรไทย',
  'ธนาคารกรุงไทย',
  'ธนาคารกรุงศรี',
  'ธนาคารtmb',
  'ธนาคารciti',
  'ธนาคารLH',
  'ธนาคารอาคารสงเคราะห์',
  'ธนาคารไทยพาณิชย์',
  'ธนาคารเกียรตินาคิน',
  'ธนาคารไทยเครดิต',
  'ธนาคารUOB',
  'ธนาคารTisco',
  'ธนาคารอีสลาม',
  'ธนาคารCIMB THAI',
];

List<String> hotlinebanktel = [
  '1333',
  '1115',
  '02 888 8888',
  '02 111 1111',
  '1572',
  '1428',
  '1588',
  '1327',
  '02 777 7777',
  '02 165 5555',
  '02 697 5454',
  '02 285 1555',
  '02 285 1555',
  '02 633 6000',
  '02 204 2766',
  '02 626 7777',
];

class _SubCHomeUIState extends State<SubCHomeUI> {
  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(scheme: 'tel', path: phoneNumber);
    await launchUrl(launchUri);
  }

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
                  itemCount: hotlinebankpic.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () => _makePhoneCall(hotlinebanktel[index]),
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
                                  hotlinebankpic[index],
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  width:
                                      MediaQuery.of(context).size.height * 0.05,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        hotlinebanktext[index],
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        hotlinebanktel[index],
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
