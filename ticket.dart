import 'package:flutter/material.dart';
class Post extends StatefulWidget {
  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      backgroundColor: Colors.white70,
      body: Column(
        children: <Widget>[
      Expanded(
      child: ListView(

        children: <Widget>[

        Container(
        //margin: const EdgeInsets.only(left:6,right:6,top:6),
        height: 160,
        width: 300,

        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.white70,
              blurRadius: 0.5, // has the effect of softening the shadow
              spreadRadius: 0.5, // has the effect of extending the shadow
              offset: Offset(
                1.0, // horizontal, move right 10
                1.0, // vertical, move down 10
              ),
            )
          ],
          borderRadius: BorderRadius.only(
            //topLeft: Radius.circular(10.0),
            //topRight: Radius.circular( 10.0),
            bottomRight: Radius.circular(10.0),
            bottomLeft: Radius.circular( 10.0),
          ),

          gradient:LinearGradient(
            colors: [Colors.cyan,Colors.tealAccent],

          ),
          //boxShadow: // border:Border.all(color: Colors.white,width:1)
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 5.0,top: 22),
                  child: Row(
                      children: <Widget>[

                        Padding(padding: const EdgeInsets.only(top:22.0,),),
                        Container(
                          child: Text("Betty", textAlign: TextAlign.right,
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.orange,
                              fontWeight: FontWeight.bold,
                              shadows: [Shadow(
                                  color: Colors.white70,
                                  offset:Offset(0,-3)),
                                Shadow(
                                    color: Colors.white,
                                    blurRadius: 20,
                                    offset:Offset(0,0)
                                ),
                              ],
                            ),
                          ),
                        ),

                      ]
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:10.0,top: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(),
                        child: Padding(
                          padding: const EdgeInsets.only(),
                          child: Text("Welcome,",
                            textAlign: TextAlign.right,
                            style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 8),),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(),
                        child: Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(bottom: 20 ),
                          child: Container(
                            child: Text("Satwik Pachino",
                              textAlign: TextAlign.left,
                              style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Row(
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(),),
                    Flexible(
                      flex: 6,
                      child:  Container(
                        height: 35,
                        width: 300,


                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10.0),
                                topRight: Radius.circular( 10.0),
                                bottomRight: Radius.circular(10.0),
                                bottomLeft: Radius.circular( 10.0)
                            )
                        ),
                        child: TextField(
                          onChanged: (value) {
                          },

                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search directory by name',
//                              hintText: "Search directory by name",
                            hintStyle: TextStyle(fontSize: 12),
//
//                                //labelText: "Search directory by name",
                            prefixIcon: Icon(Icons.search),
//                                border: (
//                                 borderRadius: BorderRadius.all(Radius.circular(15.0),),
//
//
//                                ),
                          ),
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 10),),
                    Flexible(
                      flex: 1,
                      child:  Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10.0),
                                  topRight: Radius.circular( 10.0),
                                  bottomRight: Radius.circular(10.0),
                                  bottomLeft: Radius.circular( 10.0)
                              )
                          ),
                          child:  IconButton(icon:Icon(Icons.list,size: 25,),
                            onPressed: null,)
                      ),
                    ),
                  ],
                ),
              ]
          ),
        ),
      )
      ],
    ),
    ),
    ],
      ),
    );
  }
}
