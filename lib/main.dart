import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title: "practice App",
  home: Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.green,
      title: Text("List"),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          tooltip: 'find element',
          onPressed: ()=>debugPrint("item searched"),
        ),
        IconButton(
          icon: Icon(Icons.add_box),
          tooltip: 'find element',
          onPressed: ()=>debugPrint("item added"),
        ),
        IconButton(
          icon: Icon(Icons.add_shopping_cart),
          tooltip: 'find element',
          onPressed: ()=>debugPrint("called"),
        )


      ],
    ),
    drawer: Drawer(
      child: ListView(
        children: [
          DrawerHeader(child: Text("List setting",
            style: TextStyle(fontSize: 40.0),),
            decoration: BoxDecoration(
              color: Colors.greenAccent,

            ),
          ),
          ListTile(
            title: Text("Name"),
            leading: Icon(Icons.accessibility_new_outlined),
          )
        ],
      ),
    ),
    body: listView(),
    bottomNavigationBar: Container(
      height: 60,
      color: Colors.black12,
      child: InkWell(
        onTap: () => print('tap on close'),
        child: Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: Row(
            children: <Widget>[
              Expanded(child:   IconButton(icon: Icon(Icons.account_circle), onPressed:(){},tooltip: ("add Pics"))),
              Expanded(child:   IconButton(icon: Icon(Icons.add), onPressed:(){},tooltip: ("add items"))),
              Expanded(child:   IconButton(icon: Icon(Icons.shopping_cart), onPressed:(){},tooltip: ("Profile"))),

            ],
          ),
        ),
      ),

    ),
    floatingActionButton: FloatingActionButton.extended(
      onPressed: (){},
      label: const Text('Approve'),
      icon: const Icon(Icons.thumb_up),
      backgroundColor: Colors.pink,
    ),
  ),
));

class listView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(crossAxisCount: 2,
      children: [
        Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
          elevation: 10.0,
          child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
            child: Stack(
              children: [
                Image.network("https://i.pinimg.com/originals/16/4e/fc/164efc893497e5774f1fdc4c6d346d59.jpg",height: 130,width: 250,),
                Container(
                  margin: EdgeInsets.only(top: 135,left: 70),
                  height: 30.0,width: 90.0,
                  child: Stack(
                    children: [
                      RaisedButton(
                        onPressed: (){debugPrint("pressed");},
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(80.0))),
                        padding: EdgeInsets.all(0.0),
                        child: Ink(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors:[Colors.red,Colors.red[200]],
                            begin: Alignment.topLeft,
                              end: Alignment.topRight,
                            ),
                            borderRadius: BorderRadius.circular(10.0),

                          ),
                        ),
                      ),
                      Center(
                        child: Text("Buy Now",style: TextStyle(color: Colors.white),),
                      ),

                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 140.0,left: 4.0),
                  child: Text(" RS 149 ", style: TextStyle(fontSize:18,fontWeight: FontWeight.bold),),
                ),

              ],
            ),
          ),

        ),
        Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
          elevation: 10.0,
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            child: Stack(
              children: [
                Image.network("https://pngimg.com/uploads/tshirt/tshirt_PNG5448.png",height: 130,width: 200,),
                Container(
                  margin: EdgeInsets.only(top: 135,left: 70),
                  height: 30.0,width: 90.0,
                  child: Stack(
                    children: [
                      RaisedButton(
                        onPressed: (){debugPrint("pressed");},
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(80.0))),
                        padding: EdgeInsets.all(0.0),
                        child: Ink(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors:[Colors.red,Colors.red[200]],
                              begin: Alignment.topLeft,
                              end: Alignment.topRight,
                            ),
                            borderRadius: BorderRadius.circular(10.0),

                          ),
                        ),
                      ),
                      Center(
                        child: Text("Buy Now",style: TextStyle(color: Colors.white),),
                      ),

                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 140.0,left: 4.0),
                  child: Text(" RS 240 ", style: TextStyle(fontSize:18,fontWeight: FontWeight.bold),),
                ),

              ],
            ),
          ),

        ),
        Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
          elevation: 10.0,
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            child: Stack(
              children: [
                Image.network("https://pngimg.com/uploads/tshirt/tshirt_PNG5449.png",height: 130,width: 200,),
                Container(
                  margin: EdgeInsets.only(top: 135,left: 70),
                  height: 30.0,width: 90.0,
                  child: Stack(
                    children: [
                      RaisedButton(
                        onPressed: (){debugPrint("pressed");},
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(80.0))),
                        padding: EdgeInsets.all(0.0),
                        child: Ink(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors:[Colors.red,Colors.red[200]],
                              begin: Alignment.topLeft,
                              end: Alignment.topRight,
                            ),
                            borderRadius: BorderRadius.circular(10.0),

                          ),
                        ),
                      ),
                      Center(
                        child: Text("Buy Now",style: TextStyle(color: Colors.white),),
                      ),

                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 140.0,left: 4.0),
                  child: Text(" RS 149 ", style: TextStyle(fontSize:18,fontWeight: FontWeight.bold),),
                ),

              ],
            ),
          ),

        ),
        Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
          elevation: 10.0,
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            child: Stack(
              children: [
                Image.network("https://i.pinimg.com/originals/f3/0e/8b/f30e8b236fff35e4e71e4428d808324c.png",height: 130,width: 200,),
                Container(
                  margin: EdgeInsets.only(top: 135,left: 70),
                  height: 30.0,width: 90.0,
                  child: Stack(
                    children: [
                      RaisedButton(
                        onPressed: (){debugPrint("pressed");},
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(80.0))),
                        padding: EdgeInsets.all(0.0),
                        child: Ink(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors:[Colors.red,Colors.red[200]],
                              begin: Alignment.topLeft,
                              end: Alignment.topRight,
                            ),
                            borderRadius: BorderRadius.circular(10.0),

                          ),
                        ),
                      ),
                      Center(
                        child: Text("Buy Now",style: TextStyle(color: Colors.white),),
                      ),

                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 140.0,left: 4.0),
                  child: Text(" RS 149 ", style: TextStyle(fontSize:18,fontWeight: FontWeight.bold),),
                ),

              ],
            ),
          ),

        ),
        Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
          elevation: 10.0,
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            child: Stack(
              children: [
                Image.network("https://freepngimg.com/thumb/dress_shirt/7-2-dress-shirt-png-hd.png",height: 130,width: 200,),
                Container(
                  margin: EdgeInsets.only(top: 135,left: 70),
                  height: 30.0,width: 90.0,
                  child: Stack(
                    children: [
                      RaisedButton(
                        onPressed: (){debugPrint("pressed");},
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(80.0))),
                        padding: EdgeInsets.all(0.0),
                        child: Ink(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors:[Colors.red,Colors.red[200]],
                              begin: Alignment.topLeft,
                              end: Alignment.topRight,
                            ),
                            borderRadius: BorderRadius.circular(10.0),

                          ),
                        ),
                      ),
                      Center(
                        child: Text("Buy Now",style: TextStyle(color: Colors.white),),
                      ),

                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 140.0,left: 4.0),
                  child: Text(" RS 149 ", style: TextStyle(fontSize:18,fontWeight: FontWeight.bold),),
                ),

              ],
            ),
          ),

        ),
        Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
          elevation: 10.0,
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            child: Stack(
              children: [
                Image.network("https://toppng.com/uploads/preview/t-shirt-picsart-t-shirt-11563273533yrctixk3vb.png",height: 130,width: 200,),
                Container(
                  margin: EdgeInsets.only(top: 135,left: 70),
                  height: 30.0,width: 90.0,
                  child: Stack(
                    children: [
                      RaisedButton(
                        onPressed: (){debugPrint("pressed");},
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(80.0))),
                        padding: EdgeInsets.all(0.0),
                        child: Ink(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors:[Colors.red,Colors.red[200]],
                              begin: Alignment.topLeft,
                              end: Alignment.topRight,
                            ),
                            borderRadius: BorderRadius.circular(10.0),

                          ),
                        ),
                      ),
                      Center(
                        child: Text("Buy Now",style: TextStyle(color: Colors.white),),
                      ),

                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 140.0,left: 4.0),
                  child: Text(" RS 149 ", style: TextStyle(fontSize:18,fontWeight: FontWeight.bold),),
                ),

              ],
            ),
          ),

        ),
        Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
          elevation: 10.0,
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            child: Stack(
              children: [
                Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOsTm-T9Xp4NszdEXKfZombe5LNgYUvBiuEw&usqp=CAU",height: 130,width: 200,),
                Container(
                  margin: EdgeInsets.only(top: 135,left: 70),
                  height: 30.0,width: 90.0,
                  child: Stack(
                    children: [
                      RaisedButton(
                        onPressed: (){debugPrint("pressed");},
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(80.0))),
                        padding: EdgeInsets.all(0.0),
                        child: Ink(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors:[Colors.red,Colors.red[200]],
                              begin: Alignment.topLeft,
                              end: Alignment.topRight,
                            ),
                            borderRadius: BorderRadius.circular(10.0),

                          ),
                        ),
                      ),
                      Center(
                        child: Text("Buy Now",style: TextStyle(color: Colors.white),),
                      ),

                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 140.0,left: 4.0),
                  child: Text(" RS 149 ", style: TextStyle(fontSize:18,fontWeight: FontWeight.bold),),
                ),

              ],
            ),
          ),

        ),
        Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
          elevation: 10.0,
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            child: Stack(
              children: [
                Image.network("https://www.transparentpng.com/thumb/shirt/jcsIrn-long-sleeved-t-shirt-collar-png.png",height: 130,width: 200,),
                Container(
                  margin: EdgeInsets.only(top: 135,left: 70),
                  height: 30.0,width: 90.0,
                  child: Stack(
                    children: [
                      RaisedButton(
                        onPressed: (){debugPrint("pressed");},
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(80.0))),
                        padding: EdgeInsets.all(0.0),
                        child: Ink(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors:[Colors.red,Colors.red[200]],
                              begin: Alignment.topLeft,
                              end: Alignment.topRight,
                            ),
                            borderRadius: BorderRadius.circular(10.0),

                          ),
                        ),
                      ),
                      Center(
                        child: Text("Buy Now",style: TextStyle(color: Colors.white),),
                      ),

                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 140.0,left: 4.0),
                  child: Text(" RS 149 ", style: TextStyle(fontSize:18,fontWeight: FontWeight.bold),),
                ),

              ],
            ),
          ),

        ),
        Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
          elevation: 10.0,
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            child: Stack(
              children: [
                Image.network("https://i.pinimg.com/originals/16/4e/fc/164efc893497e5774f1fdc4c6d346d59.jpg",height: 130,width: 250,),
                Container(
                  margin: EdgeInsets.only(top: 135,left: 70),
                  height: 30.0,width: 90.0,
                  child: Stack(
                    children: [
                      RaisedButton(
                        onPressed: (){debugPrint("pressed");},
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(80.0))),
                        padding: EdgeInsets.all(0.0),
                        child: Ink(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors:[Colors.red,Colors.red[200]],
                              begin: Alignment.topLeft,
                              end: Alignment.topRight,
                            ),
                            borderRadius: BorderRadius.circular(10.0),

                          ),
                        ),
                      ),
                      Center(
                        child: Text("Buy Now",style: TextStyle(color: Colors.white),),
                      ),

                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 140.0,left: 4.0),
                  child: Text(" RS 149 ", style: TextStyle(fontSize:18,fontWeight: FontWeight.bold),),
                ),

              ],
            ),
          ),

        ),
        Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
          elevation: 10.0,
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            child: Stack(
              children: [
                Image.network("https://pngimg.com/uploads/tshirt/tshirt_PNG5448.png",height: 130,width: 200,),
                Container(
                  margin: EdgeInsets.only(top: 135,left: 70),
                  height: 30.0,width: 90.0,
                  child: Stack(
                    children: [
                      RaisedButton(
                        onPressed: (){debugPrint("pressed");},
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(80.0))),
                        padding: EdgeInsets.all(0.0),
                        child: Ink(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors:[Colors.red,Colors.red[200]],
                              begin: Alignment.topLeft,
                              end: Alignment.topRight,
                            ),
                            borderRadius: BorderRadius.circular(10.0),

                          ),
                        ),
                      ),
                      Center(
                        child: Text("Buy Now",style: TextStyle(color: Colors.white),),
                      ),

                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 140.0,left: 4.0),
                  child: Text(" RS 240 ", style: TextStyle(fontSize:18,fontWeight: FontWeight.bold),),
                ),

              ],
            ),
          ),

        ),
        Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
          elevation: 10.0,
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            child: Stack(
              children: [
                Image.network("https://pngimg.com/uploads/tshirt/tshirt_PNG5449.png",height: 130,width: 200,),
                Container(
                  margin: EdgeInsets.only(top: 135,left: 70),
                  height: 30.0,width: 90.0,
                  child: Stack(
                    children: [
                      RaisedButton(
                        onPressed: (){debugPrint("pressed");},
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(80.0))),
                        padding: EdgeInsets.all(0.0),
                        child: Ink(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors:[Colors.red,Colors.red[200]],
                              begin: Alignment.topLeft,
                              end: Alignment.topRight,
                            ),
                            borderRadius: BorderRadius.circular(10.0),

                          ),
                        ),
                      ),
                      Center(
                        child: Text("Buy Now",style: TextStyle(color: Colors.white),),
                      ),

                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 140.0,left: 4.0),
                  child: Text(" RS 149 ", style: TextStyle(fontSize:18,fontWeight: FontWeight.bold),),
                ),

              ],
            ),
          ),

        ),
        Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
          elevation: 10.0,
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            child: Stack(
              children: [
                Image.network("https://i.pinimg.com/originals/f3/0e/8b/f30e8b236fff35e4e71e4428d808324c.png",height: 130,width: 200,),
                Container(
                  margin: EdgeInsets.only(top: 135,left: 70),
                  height: 30.0,width: 90.0,
                  child: Stack(
                    children: [
                      RaisedButton(
                        onPressed: (){debugPrint("pressed");},
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(80.0))),
                        padding: EdgeInsets.all(0.0),
                        child: Ink(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors:[Colors.red,Colors.red[200]],
                              begin: Alignment.topLeft,
                              end: Alignment.topRight,
                            ),
                            borderRadius: BorderRadius.circular(10.0),

                          ),
                        ),
                      ),
                      Center(
                        child: Text("Buy Now",style: TextStyle(color: Colors.white),),
                      ),

                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 140.0,left: 4.0),
                  child: Text(" RS 149 ", style: TextStyle(fontSize:18,fontWeight: FontWeight.bold),),
                ),

              ],
            ),
          ),

        ),
        Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
          elevation: 10.0,
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            child: Stack(
              children: [
                Image.network("https://freepngimg.com/thumb/dress_shirt/7-2-dress-shirt-png-hd.png",height: 130,width: 200,),
                Container(
                  margin: EdgeInsets.only(top: 135,left: 70),
                  height: 30.0,width: 90.0,
                  child: Stack(
                    children: [
                      RaisedButton(
                        onPressed: (){debugPrint("pressed");},
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(80.0))),
                        padding: EdgeInsets.all(0.0),
                        child: Ink(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors:[Colors.red,Colors.red[200]],
                              begin: Alignment.topLeft,
                              end: Alignment.topRight,
                            ),
                            borderRadius: BorderRadius.circular(10.0),

                          ),
                        ),
                      ),
                      Center(
                        child: Text("Buy Now",style: TextStyle(color: Colors.white),),
                      ),

                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 140.0,left: 4.0),
                  child: Text(" RS 149 ", style: TextStyle(fontSize:18,fontWeight: FontWeight.bold),),
                ),

              ],
            ),
          ),

        ),
        Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
          elevation: 10.0,
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            child: Stack(
              children: [
                Image.network("https://toppng.com/uploads/preview/t-shirt-picsart-t-shirt-11563273533yrctixk3vb.png",height: 130,width: 200,),
                Container(
                  margin: EdgeInsets.only(top: 135,left: 70),
                  height: 30.0,width: 90.0,
                  child: Stack(
                    children: [
                      RaisedButton(
                        onPressed: (){debugPrint("pressed");},
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(80.0))),
                        padding: EdgeInsets.all(0.0),
                        child: Ink(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors:[Colors.red,Colors.red[200]],
                              begin: Alignment.topLeft,
                              end: Alignment.topRight,
                            ),
                            borderRadius: BorderRadius.circular(10.0),

                          ),
                        ),
                      ),
                      Center(
                        child: Text("Buy Now",style: TextStyle(color: Colors.white),),
                      ),

                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 140.0,left: 4.0),
                  child: Text(" RS 149 ", style: TextStyle(fontSize:18,fontWeight: FontWeight.bold),),
                ),

              ],
            ),
          ),

        ),
        Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
          elevation: 10.0,
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            child: Stack(
              children: [
                Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOsTm-T9Xp4NszdEXKfZombe5LNgYUvBiuEw&usqp=CAU",height: 130,width: 200,),
                Container(
                  margin: EdgeInsets.only(top: 135,left: 70),
                  height: 30.0,width: 90.0,
                  child: Stack(
                    children: [
                      RaisedButton(
                        onPressed: (){debugPrint("pressed");},
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(80.0))),
                        padding: EdgeInsets.all(0.0),
                        child: Ink(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors:[Colors.red,Colors.red[200]],
                              begin: Alignment.topLeft,
                              end: Alignment.topRight,
                            ),
                            borderRadius: BorderRadius.circular(10.0),

                          ),
                        ),
                      ),
                      Center(
                        child: Text("Buy Now",style: TextStyle(color: Colors.white),),
                      ),

                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 140.0,left: 4.0),
                  child: Text(" RS 149 ", style: TextStyle(fontSize:18,fontWeight: FontWeight.bold),),
                ),

              ],
            ),
          ),

        ),
        Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
          elevation: 10.0,
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            child: Stack(
              children: [
                Image.network("https://www.transparentpng.com/thumb/shirt/jcsIrn-long-sleeved-t-shirt-collar-png.png",height: 130,width: 200,),
                Container(
                  margin: EdgeInsets.only(top: 135,left: 70),
                  height: 30.0,width: 90.0,
                  child: Stack(
                    children: [
                      RaisedButton(
                        onPressed: (){debugPrint("pressed");},
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(80.0))),
                        padding: EdgeInsets.all(0.0),
                        child: Ink(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors:[Colors.red,Colors.red[200]],
                              begin: Alignment.topLeft,
                              end: Alignment.topRight,
                            ),
                            borderRadius: BorderRadius.circular(10.0),

                          ),
                        ),
                      ),
                      Center(
                        child: Text("Buy Now",style: TextStyle(color: Colors.white),),
                      ),

                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 140.0,left: 4.0),
                  child: Text(" RS 149 ", style: TextStyle(fontSize:18,fontWeight: FontWeight.bold),),
                ),

              ],
            ),
          ),

        ),
        Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
          elevation: 10.0,
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            child: Stack(
              children: [
                Image.network("https://pngimg.com/uploads/tshirt/tshirt_PNG5449.png",height: 130,width: 200,),
                Container(
                  margin: EdgeInsets.only(top: 135,left: 70),
                  height: 30.0,width: 90.0,
                  child: Stack(
                    children: [
                      RaisedButton(
                        onPressed: (){debugPrint("pressed");},
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(80.0))),
                        padding: EdgeInsets.all(0.0),
                        child: Ink(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors:[Colors.red,Colors.red[200]],
                              begin: Alignment.topLeft,
                              end: Alignment.topRight,
                            ),
                            borderRadius: BorderRadius.circular(10.0),

                          ),
                        ),
                      ),
                      Center(
                        child: Text("Buy Now",style: TextStyle(color: Colors.white),),
                      ),

                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 140.0,left: 4.0),
                  child: Text(" RS 149 ", style: TextStyle(fontSize:18,fontWeight: FontWeight.bold),),
                ),

              ],
            ),
          ),

        ),
        Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
          elevation: 10.0,
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            child: Stack(
              children: [
                Image.network("https://i.pinimg.com/originals/f3/0e/8b/f30e8b236fff35e4e71e4428d808324c.png",height: 130,width: 200,),
                Container(
                  margin: EdgeInsets.only(top: 135,left: 70),
                  height: 30.0,width: 90.0,
                  child: Stack(
                    children: [
                      RaisedButton(
                        onPressed: (){debugPrint("pressed");},
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(80.0))),
                        padding: EdgeInsets.all(0.0),
                        child: Ink(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors:[Colors.red,Colors.red[200]],
                              begin: Alignment.topLeft,
                              end: Alignment.topRight,
                            ),
                            borderRadius: BorderRadius.circular(10.0),

                          ),
                        ),
                      ),
                      Center(
                        child: Text("Buy Now",style: TextStyle(color: Colors.white),),
                      ),

                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 140.0,left: 4.0),
                  child: Text(" RS 149 ", style: TextStyle(fontSize:18,fontWeight: FontWeight.bold),),
                ),

              ],
            ),
          ),

        ),
        Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
          elevation: 10.0,
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            child: Stack(
              children: [
                Image.network("https://freepngimg.com/thumb/dress_shirt/7-2-dress-shirt-png-hd.png",height: 130,width: 200,),
                Container(
                  margin: EdgeInsets.only(top: 135,left: 70),
                  height: 30.0,width: 90.0,
                  child: Stack(
                    children: [
                      RaisedButton(
                        onPressed: (){debugPrint("pressed");},
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(80.0))),
                        padding: EdgeInsets.all(0.0),
                        child: Ink(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors:[Colors.red,Colors.red[200]],
                              begin: Alignment.topLeft,
                              end: Alignment.topRight,
                            ),
                            borderRadius: BorderRadius.circular(10.0),

                          ),
                        ),
                      ),
                      Center(
                        child: Text("Buy Now",style: TextStyle(color: Colors.white),),
                      ),

                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 140.0,left: 4.0),
                  child: Text(" RS 149 ", style: TextStyle(fontSize:18,fontWeight: FontWeight.bold),),
                ),

              ],
            ),
          ),

        ),
        Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
          elevation: 10.0,
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            child: Stack(
              children: [
                Image.network("https://toppng.com/uploads/preview/t-shirt-picsart-t-shirt-11563273533yrctixk3vb.png",height: 130,width: 200,),
                Container(
                  margin: EdgeInsets.only(top: 135,left: 70),
                  height: 30.0,width: 90.0,
                  child: Stack(
                    children: [
                      RaisedButton(
                        onPressed: (){debugPrint("pressed");},
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(80.0))),
                        padding: EdgeInsets.all(0.0),
                        child: Ink(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors:[Colors.red,Colors.red[200]],
                              begin: Alignment.topLeft,
                              end: Alignment.topRight,
                            ),
                            borderRadius: BorderRadius.circular(10.0),

                          ),
                        ),
                      ),
                      Center(
                        child: Text("Buy Now",style: TextStyle(color: Colors.white),),
                      ),

                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 140.0,left: 4.0),
                  child: Text(" RS 149 ", style: TextStyle(fontSize:18,fontWeight: FontWeight.bold),),
                ),

              ],
            ),
          ),

        ),
        Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
          elevation: 10.0,
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            child: Stack(
              children: [
                Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOsTm-T9Xp4NszdEXKfZombe5LNgYUvBiuEw&usqp=CAU",height: 130,width: 200,),
                Container(
                  margin: EdgeInsets.only(top: 135,left: 70),
                  height: 30.0,width: 90.0,
                  child: Stack(
                    children: [
                      RaisedButton(
                        onPressed: (){debugPrint("pressed");},
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(80.0))),
                        padding: EdgeInsets.all(0.0),
                        child: Ink(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors:[Colors.red,Colors.red[200]],
                              begin: Alignment.topLeft,
                              end: Alignment.topRight,
                            ),
                            borderRadius: BorderRadius.circular(10.0),

                          ),
                        ),
                      ),
                      Center(
                        child: Text("Buy Now",style: TextStyle(color: Colors.white),),
                      ),

                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 140.0,left: 4.0),
                  child: Text(" RS 149 ", style: TextStyle(fontSize:18,fontWeight: FontWeight.bold),),
                ),

              ],
            ),
          ),

        ),
        Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
          elevation: 10.0,
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            child: Stack(
              children: [
                Image.network("https://www.transparentpng.com/thumb/shirt/jcsIrn-long-sleeved-t-shirt-collar-png.png",height: 130,width: 200,),
                Container(
                  margin: EdgeInsets.only(top: 135,left: 70),
                  height: 30.0,width: 90.0,
                  child: Stack(
                    children: [
                      RaisedButton(
                        onPressed: (){debugPrint("pressed");},
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(80.0))),
                        padding: EdgeInsets.all(0.0),
                        child: Ink(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors:[Colors.red,Colors.red[200]],
                              begin: Alignment.topLeft,
                              end: Alignment.topRight,
                            ),
                            borderRadius: BorderRadius.circular(10.0),

                          ),
                        ),
                      ),
                      Center(
                        child: Text("Buy Now",style: TextStyle(color: Colors.white),),
                      ),

                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 140.0,left: 4.0),
                  child: Text(" RS 149 ", style: TextStyle(fontSize:18,fontWeight: FontWeight.bold),),
                ),

              ],
            ),
          ),

        ),
        Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
          elevation: 10.0,
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            child: Stack(
              children: [
                Image.network("https://i.pinimg.com/originals/16/4e/fc/164efc893497e5774f1fdc4c6d346d59.jpg",height: 130,width: 250,),
                Container(
                  margin: EdgeInsets.only(top: 135,left: 70),
                  height: 30.0,width: 90.0,
                  child: Stack(
                    children: [
                      RaisedButton(
                        onPressed: (){debugPrint("pressed");},
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(80.0))),
                        padding: EdgeInsets.all(0.0),
                        child: Ink(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors:[Colors.red,Colors.red[200]],
                              begin: Alignment.topLeft,
                              end: Alignment.topRight,
                            ),
                            borderRadius: BorderRadius.circular(10.0),

                          ),
                        ),
                      ),
                      Center(
                        child: Text("Buy Now",style: TextStyle(color: Colors.white),),
                      ),

                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 140.0,left: 4.0),
                  child: Text(" RS 149 ", style: TextStyle(fontSize:18,fontWeight: FontWeight.bold),),
                ),

              ],
            ),
          ),

        ),
        Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
          elevation: 10.0,
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            child: Stack(
              children: [
                Image.network("https://pngimg.com/uploads/tshirt/tshirt_PNG5448.png",height: 130,width: 200,),
                Container(
                  margin: EdgeInsets.only(top: 135,left: 70),
                  height: 30.0,width: 90.0,
                  child: Stack(
                    children: [
                      RaisedButton(
                        onPressed: (){debugPrint("pressed");},
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(80.0))),
                        padding: EdgeInsets.all(0.0),
                        child: Ink(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors:[Colors.red,Colors.red[200]],
                              begin: Alignment.topLeft,
                              end: Alignment.topRight,
                            ),
                            borderRadius: BorderRadius.circular(10.0),

                          ),
                        ),
                      ),
                      Center(
                        child: Text("Buy Now",style: TextStyle(color: Colors.white),),
                      ),

                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 140.0,left: 4.0),
                  child: Text(" RS 240 ", style: TextStyle(fontSize:18,fontWeight: FontWeight.bold),),
                ),

              ],
            ),
          ),

        ),
        Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
          elevation: 10.0,
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            child: Stack(
              children: [
                Image.network("https://pngimg.com/uploads/tshirt/tshirt_PNG5449.png",height: 130,width: 200,),
                Container(
                  margin: EdgeInsets.only(top: 135,left: 70),
                  height: 30.0,width: 90.0,
                  child: Stack(
                    children: [
                      RaisedButton(
                        onPressed: (){debugPrint("pressed");},
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(80.0))),
                        padding: EdgeInsets.all(0.0),
                        child: Ink(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors:[Colors.red,Colors.red[200]],
                              begin: Alignment.topLeft,
                              end: Alignment.topRight,
                            ),
                            borderRadius: BorderRadius.circular(10.0),

                          ),
                        ),
                      ),
                      Center(
                        child: Text("Buy Now",style: TextStyle(color: Colors.white),),
                      ),

                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 140.0,left: 4.0),
                  child: Text(" RS 149 ", style: TextStyle(fontSize:18,fontWeight: FontWeight.bold),),
                ),

              ],
            ),
          ),

        ),
        Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
          elevation: 10.0,
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            child: Stack(
              children: [
                Image.network("https://i.pinimg.com/originals/f3/0e/8b/f30e8b236fff35e4e71e4428d808324c.png",height: 130,width: 200,),
                Container(
                  margin: EdgeInsets.only(top: 135,left: 70),
                  height: 30.0,width: 90.0,
                  child: Stack(
                    children: [
                      RaisedButton(
                        onPressed: (){debugPrint("pressed");},
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(80.0))),
                        padding: EdgeInsets.all(0.0),
                        child: Ink(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors:[Colors.red,Colors.red[200]],
                              begin: Alignment.topLeft,
                              end: Alignment.topRight,
                            ),
                            borderRadius: BorderRadius.circular(10.0),

                          ),
                        ),
                      ),
                      Center(
                        child: Text("Buy Now",style: TextStyle(color: Colors.white),),
                      ),

                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 140.0,left: 4.0),
                  child: Text(" RS 149 ", style: TextStyle(fontSize:18,fontWeight: FontWeight.bold),),
                ),

              ],
            ),
          ),

        ),
        Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
          elevation: 10.0,
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            child: Stack(
              children: [
                Image.network("https://freepngimg.com/thumb/dress_shirt/7-2-dress-shirt-png-hd.png",height: 130,width: 200,),
                Container(
                  margin: EdgeInsets.only(top: 135,left: 70),
                  height: 30.0,width: 90.0,
                  child: Stack(
                    children: [
                      RaisedButton(
                        onPressed: (){debugPrint("pressed");},
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(80.0))),
                        padding: EdgeInsets.all(0.0),
                        child: Ink(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors:[Colors.red,Colors.red[200]],
                              begin: Alignment.topLeft,
                              end: Alignment.topRight,
                            ),
                            borderRadius: BorderRadius.circular(10.0),

                          ),
                        ),
                      ),
                      Center(
                        child: Text("Buy Now",style: TextStyle(color: Colors.white),),
                      ),

                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 140.0,left: 4.0),
                  child: Text(" RS 149 ", style: TextStyle(fontSize:18,fontWeight: FontWeight.bold),),
                ),

              ],
            ),
          ),

        ),
        Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
          elevation: 10.0,
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            child: Stack(
              children: [
                Image.network("https://toppng.com/uploads/preview/t-shirt-picsart-t-shirt-11563273533yrctixk3vb.png",height: 130,width: 200,),
                Container(
                  margin: EdgeInsets.only(top: 135,left: 70),
                  height: 30.0,width: 90.0,
                  child: Stack(
                    children: [
                      RaisedButton(
                        onPressed: (){debugPrint("pressed");},
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(80.0))),
                        padding: EdgeInsets.all(0.0),
                        child: Ink(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors:[Colors.red,Colors.red[200]],
                              begin: Alignment.topLeft,
                              end: Alignment.topRight,
                            ),
                            borderRadius: BorderRadius.circular(10.0),

                          ),
                        ),
                      ),
                      Center(
                        child: Text("Buy Now",style: TextStyle(color: Colors.white),),
                      ),

                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 140.0,left: 4.0),
                  child: Text(" RS 149 ", style: TextStyle(fontSize:18,fontWeight: FontWeight.bold),),
                ),

              ],
            ),
          ),

        ),
        Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
          elevation: 10.0,
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            child: Stack(
              children: [
                Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOsTm-T9Xp4NszdEXKfZombe5LNgYUvBiuEw&usqp=CAU",height: 130,width: 200,),
                Container(
                  margin: EdgeInsets.only(top: 135,left: 70),
                  height: 30.0,width: 90.0,
                  child: Stack(
                    children: [
                      RaisedButton(
                        onPressed: (){debugPrint("pressed");},
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(80.0))),
                        padding: EdgeInsets.all(0.0),
                        child: Ink(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors:[Colors.red,Colors.red[200]],
                              begin: Alignment.topLeft,
                              end: Alignment.topRight,
                            ),
                            borderRadius: BorderRadius.circular(10.0),

                          ),
                        ),
                      ),
                      Center(
                        child: Text("Buy Now",style: TextStyle(color: Colors.white),),
                      ),

                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 140.0,left: 4.0),
                  child: Text(" RS 149 ", style: TextStyle(fontSize:18,fontWeight: FontWeight.bold),),
                ),

              ],
            ),
          ),

        ),
        Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
          elevation: 10.0,
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            child: Stack(
              children: [
                Image.network("https://www.transparentpng.com/thumb/shirt/jcsIrn-long-sleeved-t-shirt-collar-png.png",height: 130,width: 200,),
                Container(
                  margin: EdgeInsets.only(top: 135,left: 70),
                  height: 30.0,width: 90.0,
                  child: Stack(
                    children: [
                      RaisedButton(
                        onPressed: (){debugPrint("pressed");},
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(80.0))),
                        padding: EdgeInsets.all(0.0),
                        child: Ink(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors:[Colors.red,Colors.red[200]],
                              begin: Alignment.topLeft,
                              end: Alignment.topRight,
                            ),
                            borderRadius: BorderRadius.circular(10.0),

                          ),
                        ),
                      ),
                      Center(
                        child: Text("Buy Now",style: TextStyle(color: Colors.white),),
                      ),

                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 140.0,left: 4.0),
                  child: Text(" RS 149 ", style: TextStyle(fontSize:18,fontWeight: FontWeight.bold),),
                ),

              ],
            ),
          ),

        ),


      ],);
  }
}




