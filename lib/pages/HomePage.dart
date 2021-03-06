import 'package:flutter/material.dart';
import 'package:food_app/animations/FadeAnimation.dart';
import 'package:food_app/pages/data.dart';
import 'package:food_app/detail.dart';
import 'package:food_app/pages/profil.dart';
class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0,
        brightness: Brightness.light,
        leading: Icon(null),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Profile()),
              );
            },
            icon: Icon(Icons.account_circle_rounded, color: Colors.grey[800],),
          ),

        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  FadeAnimation(1, Text('Bakso Barokah', style: TextStyle(color: Colors.grey[80], fontWeight: FontWeight.bold, fontSize: 30),)),
                  SizedBox(height: 20,),
                  Container(
                    height: 50,
                    child: ListView(
                      scrollDirection: Axis.horizontal,


                      children: <Widget>[
                        FadeAnimation(1, makeCategory(isActive: true, title: 'Makanan')),
                        FadeAnimation(1.3, makeCategory(isActive: false, title: 'Minuman')),
                        FadeAnimation(1.4, makeCategory(isActive: false, title: 'Mie Ayam')),

                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                ],
              ),
            ),
            FadeAnimation(1, Padding(
              padding: EdgeInsets.all(20),
              child: Text('Free Delivery', style: TextStyle(color: Colors.grey[700], fontSize: 20, fontWeight: FontWeight.bold),),
            )),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: data.length,
                    itemBuilder: (context, index)
                    {
                      final Makanan = data[index];

                        return InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) {
                                  return Detail(Makanan : Makanan);
                                },
                              ),
                            );
                          },

                          child: AspectRatio(
                            aspectRatio: 1 / 1.5,
                            child: GestureDetector(
                              child: Container(
                                margin: EdgeInsets.only(right: 20),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                      image: AssetImage(Makanan.img),
                                      fit: BoxFit.cover,
                                    )
                                ),

                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      gradient: LinearGradient(
                                          begin: Alignment.bottomCenter,
                                          stops: [.2, .9],
                                          colors: [
                                            Colors.black.withOpacity(.9),
                                            Colors.black.withOpacity(.3),
                                          ]
                                      )
                                  ),

                                  child: Padding(
                                    padding: EdgeInsets.all(20.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: Icon(Icons.favorite, color: Colors.white,),
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(Makanan.harga, style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),),
                                            SizedBox(height: 10,),
                                            Text(Makanan.title, style: TextStyle(color: Colors.white, fontSize: 20),)
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      }

                  // children: data.map((Makanan)=>makeItem(Makanan)).toList(),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }

  Widget makeCategory({isActive, title}) {
    return AspectRatio(
      aspectRatio: isActive ? 3 : 2.5 / 1,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color: isActive ? Colors.yellow[700] : Colors.white,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Align(
          child: Text(title, style: TextStyle(color: isActive ? Colors.white : Colors.grey[500], fontSize: 18, fontWeight: isActive ? FontWeight.bold : FontWeight.w100),),
        ),
      ),
    );
  }


}