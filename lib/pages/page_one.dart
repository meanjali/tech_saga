import 'package:flutter/material.dart';

import '../constants.dart';
class PageOne extends StatefulWidget {
  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        //padding: const EdgeInsets.all(35.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(
              child: Stack(
                  //alignment: Alignment.topRight,
                  children:[
                    Container(
                        alignment: Alignment.topCenter,
                        padding: EdgeInsets.only(top: size.height * .01, left: size.width * .05, right: size.width * .02),
                        height: size.height,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("images/bg.png"),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(50),
                            bottomRight: Radius.circular(50),
                          ),
                        ),
                        child: BookInfo(size: size,)
                    ),
                  ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BookInfo extends StatelessWidget {

  const BookInfo({
    Key key,
    this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      //height: 300,
      //color:Colors.blue,
      children: [
        Flex(
          crossAxisAlignment: CrossAxisAlignment.start,
          direction: Axis.horizontal,
          children: <Widget>[
            Expanded(
                flex: 1,
                child: Container(
                  height: size.height*.29,
                  //color: Colors.grey,
//                decoration: BoxDecoration(
//                  image: DecorationImage(
//                    image: AssetImage("images/book.png"),
//                    fit: BoxFit.fill
//                  )
//                ),
                  child: Image.asset(
                    "images/book.png",
                    //height: double.infinity,
                    //width: double.infinity,
                    alignment: Alignment.topLeft,
                    fit: BoxFit.fitWidth,
                  ),
                )),
            Expanded(
                flex: 2,
                child: Container(
                  height: size.height*.35,
                  child: Column(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Desvendando",
                          style: Theme.of(context).textTheme.headline4.copyWith(
                              fontSize: 28
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: this.size.height * .005),
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.only(top: 0),
                        child: Text(
                          "Princesas",
                          style: Theme.of(context).textTheme.headline4.copyWith(
                              fontSize: 28
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: this.size.height * .005),
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.only(top: 0),
                        child: Text(
                          "By Flower Books",
                          style: Theme.of(context).textTheme.headline4.copyWith(
                              fontSize: 20
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 70,
                      ),
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                width: this.size.width * .2,
                                //padding: EdgeInsets.only(top: this.size.height * .01),
                                child: Text(
                                  "Episodes",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Color(0xFF8F8F8F),
                                  ),
                                ),
                              ),
                              Container(
                                width: this.size.width * .1,
                                padding: EdgeInsets.only(top: this.size.height * .01),
                                child: Text(
                                  "55",
                                  textAlign:TextAlign.center,
                                  //maxLines: 5,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF393939),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                width: this.size.width * .2,
                                //padding: EdgeInsets.only(top: this.size.height * .01),
                                child: Text(
                                  "View Count",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Color(0xFF8F8F8F),
                                  ),
                                ),
                              ),
                              Container(
                                width: this.size.width * .1,
                                padding: EdgeInsets.only(top: this.size.height * .01),
                                child: Text(
                                  "220",
                                  textAlign:TextAlign.center,
                                  //maxLines: 5,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF393939),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                width: this.size.width * .1,
                                //padding: EdgeInsets.only(top: this.size.height * .01),
                                child: Text(
                                  "Rating",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Color(0xFF8F8F8F),
                                  ),
                                ),
                              ),
                              Container(
                                width: this.size.width * .1,
                                padding: EdgeInsets.only(top: this.size.height * .01),
                                child: Text(
                                  "5.0",
                                  textAlign:TextAlign.center,
                                  //maxLines: 5,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF393939),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                        children: [
                          IconButton(
                            icon: Icon(Icons.favorite_border, size: 20, color: Colors.pink,),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Icon(Icons.settings, size: 20, color: Colors.grey,),
                            onPressed: () {},
                          ),
                        ],
                      ),

                    ],
                  ),
                )
            ),

          ],
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 8, 8),
            child: Stack(
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Summary',style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF8F8F8F),
                        ),),
                        Text('Episodes',style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF8F8F8F),
                        ),),
                        Text('Reviews',style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF8F8F8F),
                        ),)
                      ],
                    ),
                  ),
                  height:50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
//                    gradient: LinearGradient(
//                        colors:[Colors.pink,Colors.red],
//                        begin: Alignment.topLeft,
//                        end:Alignment.bottomRight
//                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Comments(),
        Comments(),
        Comments(),
        Comments()
      ],
    );
  }
}
class Comments extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 8, 8, 8),
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
                        backgroundColor: Colors.grey

                        ,
                        radius: 20,
                      ),
                    ),
                    Column(
                      children: [
                        Text("Charlos Day",style: TextStyle(fontWeight: FontWeight.bold)),
                        Text("5 Days ago",),
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
                          alignment: Alignment.centerLeft,child: Text("Loved it!!",style: TextStyle(fontSize: 16,))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text("I have a chance to knowledge",style: TextStyle(fontSize: 16))),

                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
