import 'package:flutter/material.dart';
import 'package:food_app/pages/HomePage.dart';
import 'package:lottie/lottie.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => Profile1()),
            // );
          },
          child:
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
            icon: Icon(Icons.keyboard_arrow_left, color: Colors.white,),
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[

          Center(
            child: Image.asset(
              "assets/images/bg.jpg",
              fit: BoxFit.cover,
              width: size.width,
              height: size.height,
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16,),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Card(
                margin: EdgeInsets.all(0),
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 4,
                child: Container(
                  height: size.height * 0.45,
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                  child: Column(
                    children: <Widget>[

                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16,),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[

                                CircleAvatar(
                                  radius: 36,
                                  child: Image.asset("assets/images/images.png"),
                                ),

                                Row(
                                  children: <Widget>[



                                    SizedBox(
                                      width: 8,
                                    ),



                                  ],
                                ),

                              ],
                            ),

                            SizedBox(
                              height: 8,
                            ),

                            Text(
                              "Sephira",
                              style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            SizedBox(
                              height: 8,
                            ),

                            Text(
                              "Pelanggan",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),

                            SizedBox(
                              height: 8,
                            ),



                          ],
                        ),
                      ),

                      Expanded(
                        child: Container(),
                      ),

                      Divider(
                        color: Colors.grey[400],
                      ),

                      Container(
                        height: 64,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[

                            Container(
                              width: 110,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[

                                  Text(
                                    "Dipesan",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                    ),
                                  ),

                                  SizedBox(
                                    height: 4,
                                  ),

                                  Text(
                                    "5",
                                    style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),

                                ],
                              ),
                            ),

                            Container(
                              width: 110,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[

                                  Text(
                                    "Voucher",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                    ),
                                  ),

                                  SizedBox(
                                    height: 4,
                                  ),

                                  Text(
                                    "0",
                                    style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),

                                ],
                              ),
                            ),



                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}