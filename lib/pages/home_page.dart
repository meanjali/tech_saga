import 'package:flutter/material.dart';
import 'package:techsaga/pages/page_one.dart';
import 'package:techsaga/pages/page_three.dart';
import 'package:techsaga/pages/page_two.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController=PageController();
  List<Widget> _screens=[
    PageOne(),PageTwo(),PageThree()
  ];
  int _selectedIndex=0;
  void _onPageChanged(int index){
    setState(() {
      _selectedIndex=index;
    });
  }
  void _onItemTapped(int selectedIndex){
    _pageController.jumpToPage(selectedIndex);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _screens,
        onPageChanged: _onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,color:_selectedIndex==0?Colors.blue:Colors.grey),label: 'Home',),
          BottomNavigationBarItem(icon: Icon(Icons.search_outlined,color:_selectedIndex==1?Colors.blue:Colors.grey),label: 'Discover'),
          BottomNavigationBarItem(icon: Icon(Icons.dashboard_outlined,color:_selectedIndex==2?Colors.blue:Colors.grey),label: 'Library'),
        ],
      ),
    );
  }
}
