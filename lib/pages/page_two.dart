import 'package:flutter/material.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';
class PageTwo extends StatefulWidget {
  @override
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  final String data=loremIpsum(words: 250);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffff8ee),
      body: Container(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.symmetric(vertical: 50,horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                    size: 35,
                  ), onPressed: ()=>Navigator.pop(context),
                ),
                IconButton(
                  icon: Icon(
                    Icons.font_download,
                    color: Colors.black,
                    size: 35,
                  ), onPressed: ()=>Navigator.pop(context),
                ),
                IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 35,
                  ), onPressed: ()=>Navigator.pop(context),
                ),
              ],
            ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Center(
                child: Text(
                  "Desvendando",
                  style: TextStyle(
                    fontSize: 28,fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                child: Text(
                  "Princesas",
                  style: TextStyle(
                      fontSize: 28,fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child:Container(
                  padding: EdgeInsets.only(top:10,left:40,right:20),
                  child: Text(data, style: TextStyle(fontSize: 20, letterSpacing: 1.5,height: 1.5),)
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}
