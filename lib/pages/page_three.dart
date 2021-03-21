import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';
import 'package:techsaga/pages/page_one.dart';
class PageThree extends StatefulWidget {

  @override
  _PageThreeState createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  final String data=loremIpsum(words: 100);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
body: ListView(
  children: [
    SizedBox(height: 20,),
    Container(
      height: MediaQuery.of(context).size.height/2,
      child: Column(
        children: [
          Row(
            children: [
              Icon(Icons.arrow_back,size: 30,color: Colors.white38,)
            ],
          ),
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
    ),
    Container(
       height: MediaQuery.of(context).size.height/2,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(70.0),
            topRight: Radius.circular(70.0),
          ),
        ),
      child: Column(
        children: [
          SizedBox(height: 20,),
          Container(
            height: 50,
            width: 150,
            child: RaisedButton(
              color: Colors.greenAccent,
              onPressed: () => print("Button Pressed"),
              child: new Text("Buy for \$62.8",style: TextStyle(fontSize: 18),),
            ),
          ),
          SizedBox(height: 20,),
          Text("Summary",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
          Expanded(
            child: SingleChildScrollView(
              child:Column(
                children: [
                  Container(
                      padding: EdgeInsets.only(top:10,left:40,right:20),
                      child: Text(data, style: TextStyle(fontSize: 20, letterSpacing: 1.5,height: 1.5),)
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      ),
Comments(),
    Comments(),
      Expanded(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              Container(
                height:150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: Colors.white,
//                    gradient: LinearGradient(
//                        colors:[Colors.pink,Colors.red],
//                        begin: Alignment.topLeft,
//                        end:Alignment.bottomRight
//                    ),
                  boxShadow: [BoxShadow(
                    color: Colors.grey,
                    blurRadius: 12,
                    offset: Offset(0,6),
                  )],
                ),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.grey,

                          radius: 20,
                        ),
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text("Flower Books",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25)),
                              IconButton(
                                icon: Icon(Icons.check_circle, size: 20, color: Colors.blue,),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 50,
                              width: 150,
                              child: RaisedButton(
                                color: Colors.blueGrey,
                                onPressed: () => print("Button Pressed"),
                                child: new Text("Follow",style: TextStyle(fontSize: 18),),
                              ),
                            ),
                        ),

                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      )

  ],

),
//      body: Container(
//        width: double.infinity,
//        height: double.infinity,
//        decoration: BoxDecoration(
//          borderRadius: BorderRadius.circular(20),
//            color:Colors.grey
//        ),
//        child: SafeArea(
//          child: Container(
//            child: Column(
//              crossAxisAlignment: CrossAxisAlignment.start,
//              children: [
//                SizedBox(
//                  height: 20,
//                ),
//                Column(
//                  children: [
//                    Padding(padding: EdgeInsets.only(top: 150),
//                    child: Align(
//                      alignment: Alignment.centerLeft,child:Center(
//                        child: Text(
//                          'The Camp',
//                        style: TextStyle(
//                          fontSize: 30,
//                          fontWeight: FontWeight.bold,
//                          color: Color(0xFF393939),
//                        ),
//                        ),
//                      ),
//                    ),),
//                    SizedBox(height: 20,),
//                    Center(
//                      child: Text(
//                        'By John',
//                        style: TextStyle(
//                          fontSize: 25,
//                          color: Colors.white,
//                        ),
//                      ),
//                    ),
//                    Padding(
//                      padding: const EdgeInsets.fromLTRB(4, 30, 4, 0),
//                      child: Row(
//                        mainAxisAlignment: MainAxisAlignment.spaceAround,
//                        children: [
//                          Text('Rating',style: TextStyle(
//                            fontSize: 20,
//                            color: Colors.white,
//                          ),),
//                          Text('Page',style: TextStyle(
//                            fontSize: 20,
//                            color: Colors.white,
//                          ),),
//                          Text('Views',style: TextStyle(
//                            fontSize: 20,
//                            color: Colors.white,
//                          ),)
//                        ],
//                      ),
//                    ),
//SizedBox(height: 10,),
//                      Row(
//                        mainAxisAlignment: MainAxisAlignment.spaceAround,
//                        children: [
//                          Text('5.0',style: TextStyle(
//                            fontSize: 20,
//                            color: Colors.black,
//                            fontWeight: FontWeight.bold
//                          ),),
//                          Text('220',style: TextStyle(
//                              fontSize: 20,
//                              color: Colors.black,
//                              fontWeight: FontWeight.bold
//                          ),),
//                          Text('1728',style: TextStyle(
//                              fontSize: 20,
//                              color: Colors.black,
//                              fontWeight: FontWeight.bold
//                          ),)
//                        ],
//                      ),
//                    SizedBox(height: 20,),
//                    Row(
//                      mainAxisAlignment: MainAxisAlignment.spaceAround,
//                      children: [
//                        Icon(Icons.favorite,color: Colors.pink,size: 40,),
//                        Icon(Icons.share,color: Colors.white38,size: 40,)
//                      ],
//                    ),
//
//                  ],
//
//                ),
//                Expanded(
//                  child: Container(
//                    padding: EdgeInsets.only(top: 20.0),
//                    decoration: BoxDecoration(
//                      color: Colors.white,
//                      borderRadius: BorderRadius.only(
//                        topLeft: Radius.circular(70.0),
//                        topRight: Radius.circular(70.0),
//                      ),
//                    ),
//
//                  ),
//                ),
//
//              ],
//            ),
//
//          ),
//        ),
//      ),
    );
  }
}
