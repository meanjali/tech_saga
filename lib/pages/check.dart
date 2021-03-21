//SingleChildScrollView(
//child: Expanded(child: Container(
//padding: EdgeInsets.only(top: 20),
//decoration: BoxDecoration(
//color: Colors.white,
//borderRadius: BorderRadius.only(
//topRight: Radius.circular(50),
//topLeft: Radius.circular(50)
//)
//),
//)),
//)
import 'package:flutter/material.dart';

class Check extends StatefulWidget {
  @override
  _CheckState createState() => _CheckState();
}

class _CheckState extends State<Check> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
            color:Colors.grey
        ),
        child: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Padding(padding: EdgeInsets.only(top: 150),
                    child: Align(
                      alignment: Alignment.centerLeft,child:Center(
                        child: Text(
                          'The Camp',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF393939),
                        ),
                        ),
                      ),
                    ),),
                    SizedBox(height: 20,),
                    Center(
                      child: Text(
                        'By John',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(4, 30, 4, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('Rating',style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),),
                          Text('Page',style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),),
                          Text('Views',style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),)
                        ],
                      ),
                    ),
SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('5.0',style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                          ),),
                          Text('220',style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                          ),),
                          Text('1728',style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                          ),)
                        ],
                      ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(Icons.favorite,color: Colors.pink,size: 40,),
                        Icon(Icons.share,color: Colors.white38,size: 40,)
                      ],
                    ),
                  ],
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(top: 20.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(70.0),
                        topRight: Radius.circular(70.0),
                      ),
                    ),

                  ),
                ),

              ],
            ),

          ),
        ),
      ),
    );
  }
}
