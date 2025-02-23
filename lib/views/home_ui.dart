import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:thai_hotline_app/views/about_ui.dart';
import 'package:thai_hotline_app/views/sub_a_home_ui.dart';
import 'package:thai_hotline_app/views/sub_b_home_ui.dart';
import 'package:thai_hotline_app/views/sub_c_home_ui.dart';
import 'package:thai_hotline_app/views/sub_d_home_ui.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({super.key});

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  List<Widget> viewInBody = [
    SubAHomeUI(),
    SubBHomeUI(),
    SubCHomeUI(),
    SubDHomeUI(),
  ];

  int indexShow = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffD9D9D9),
        title: Text(
          'สายด่วน THAILAND',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AboutUI()),
            ),
            icon: Icon(Icons.error_outline_rounded),
          ),
        ],
      ),
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: indexShow,
        onTap: (value) => setState(() {
          indexShow = value;
        }),
        items: [
          SalomonBottomBarItem(
            icon: Icon(FontAwesomeIcons.car),
            title: Text("การเดินทาง"),
            unselectedColor: Colors.grey,
            selectedColor: Colors.black,
          ),
          SalomonBottomBarItem(
            icon: Icon(FontAwesomeIcons.truckMedical),
            title: Text("อุบัติเหตุ"),
            unselectedColor: Colors.grey,
            selectedColor: Colors.black,
          ),
          SalomonBottomBarItem(
            icon: Icon(FontAwesomeIcons.buildingColumns),
            title: Text("ธนาคาร"),
            unselectedColor: Colors.grey,
            selectedColor: Colors.black,
          ),
          SalomonBottomBarItem(
            icon: Icon(FontAwesomeIcons.towerBroadcast),
            title: Text("สาธารณูปโภค"),
            unselectedColor: Colors.grey,
            selectedColor: Colors.black,
          ),
        ],
      ),
      body: viewInBody[indexShow],
    );
  }
}
