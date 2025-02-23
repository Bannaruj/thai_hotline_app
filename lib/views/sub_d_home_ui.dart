import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SubDHomeUI extends StatefulWidget {
  const SubDHomeUI({super.key});

  @override
  State<SubDHomeUI> createState() => _SubDHomeUIState();
}

final List<String> hotlineUtilitiespic = [
  'assets/icons/sub_d1.png',
  'assets/icons/sub_d2.png',
  'assets/icons/sub_d3.png',
  'assets/icons/sub_d4.png',
  'assets/icons/sub_d5.png',
  'assets/icons/sub_d6.png',
  'assets/icons/sub_d9.jpg',
  'assets/icons/sub_d8.png',
];

final List<String> hotlineUtilitiestext = [
  'ไฟฟ้านครหลวง',
  'ไฟฟ้าส่วนภูมิภาค',
  'ไฟฟ้าฝ่ายผลิต',
  'การประปานครหลวง',
  'การประปาส่วนภูมิภาค.',
  'True',
  'Dtac',
  'AIS',
  'TOT',
];

List<String> hotlineUtilitiestel = [
  '1130',
  '1129',
  '1416',
  '1125',
  '1662',
  '1242',
  '1678',
  '1175',
  '1100',
];

class _SubDHomeUIState extends State<SubDHomeUI> {
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
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: hotlineUtilitiespic.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () => _makePhoneCall(hotlineUtilitiestel[index]),
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
                                  hotlineUtilitiespic[index],
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
                                        hotlineUtilitiestext[index],
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        hotlineUtilitiestel[index],
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
