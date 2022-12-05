import 'package:flutter/material.dart';
import 'package:internship_task/screens/globalsearch.dart';
import 'package:internship_task/screens/messages3.dart';

import 'screens/Home.dart';
import 'screens/calendaredit.dart';

class Layout extends StatefulWidget{
  const Layout({Key? key}) : super(key: key);

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  int currentIndex = 0;

  List <Widget> screen =[
    const Home(),
    const GlobalSearch(),
    const calendaredit(),
     messages3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[currentIndex],
      bottomNavigationBar:BottomNavigationBar(
        currentIndex: currentIndex,
        selectedItemColor:const Color(0xffFFE0ED),
        onTap: (index){
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: ImageIcon(
                  AssetImage('assets/images/home.png'),
                color: Color(0xff505050),
              ),
            label: ''
          ),
          BottomNavigationBarItem(
              icon: ImageIcon(
                  AssetImage('assets/images/globalsearch.png'),
                color: Color(0xff505050
                ),
              ),
            label: ''
          ),
          BottomNavigationBarItem(
              icon: ImageIcon(
                  AssetImage('assets/images/calendaredit.png'),
                color: Color(0xff505050
                ),
              ),
            label: ''
          ),
          BottomNavigationBarItem(
              icon: ImageIcon(
                  AssetImage('assets/images/messages3.png'),
                color: Color(0xffFFE0ED),
                size: 28,
              ),
            label: ''
          ),

      ],),
    );
  }
}
