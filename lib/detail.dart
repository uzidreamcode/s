import 'package:flutter/material.dart';
import 'package:food_app/pages/HomePage.dart';
import 'package:food_app/pages/data.dart';


class Detail extends StatelessWidget {
  static const routeName = '/detail';
  final  Makanan;

  const Detail({Key key, @required this.Makanan}) : super(key: key);



  @override
  Widget build(BuildContext context) {



    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: 275.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(Makanan.img),
                          fit: BoxFit.cover),
                    ),
                  ),
                  GestureDetector(
                    child: Container(
                      height: 275.0,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.transparent,
                    ),

                  ),

                  Padding(
                    padding: EdgeInsets.only(right: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.arrow_back),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),

                      ],
                    ),
                  ),

                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text('Makanan Tradisional',
                    style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'Quicksand',
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold)),
              ),
              SizedBox(
                height: 14.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text(Makanan.title ,
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Quicksand',
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold)),
              ),
              SizedBox(
                height: 14.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width / 2 + 100.0,
                      child: Text(
                          Makanan.deskripsi),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.only(right: 16.10),
                    //   child: Text(restaurant.harga,
                    //       style: TextStyle(
                    //           fontWeight: FontWeight.bold,
                    //           color: Colors.black,
                    //           fontFamily: 'Montserrat',
                    //           fontSize: 24.0)),
                    // )
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 15.0),
              //   child: Text('COLOUR',
              //       style: TextStyle(
              //           fontWeight: FontWeight.bold,
              //           color: Colors.black,
              //           fontFamily: 'Montserrat',
              //           fontSize: 20.0)),
              // ),
              // SizedBox(
              //   height: 20.0,
              // ),
              // Row(
              //   children: <Widget>[
              //     colorItems(Colors.black),
              //     colorItems(Colors.grey),
              //     colorItems(Colors.grey[300]),
              //   ],
              // ),
              // SizedBox(
              //   height: 20.0,
              // ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 15.0),
              //   child: Text('MATERIAL',
              //       style: TextStyle(
              //           fontWeight: FontWeight.bold,
              //           color: Colors.black,
              //           fontFamily: 'Montserrat',
              //           fontSize: 20.0)),
              // ),
              SizedBox(
                height: 20.0,
              ),

            ],
          )
        ],
      ),
      bottomNavigationBar: Material(
        elevation: 7.0,
        color: Colors.white,
        child: Container(
          height: 60.0,
          width: MediaQuery.of(context).size.width,
          color:Colors.white,
          child:
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: 10.0),

                Container(
                  height: 50.0,
                  width: 50.0,
                  color: Colors.white,

                  child: Icon(
                    Icons.shopping_cart,
                    color: Color(0xff5f0eb3),
                  ),

                ),

                Container(

                  height: 50.0,
                  width: 50.0,
                  color: Colors.white,

                ),

              ]),
        ),
      ),
    );
  }

  Widget colorItems(Color color) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
      child: Container(
        width: 40.0,
        height: 40.0,
        decoration: BoxDecoration(shape: BoxShape.circle, color: color),
      ),
    );
  }

  Widget materialItems(IconData icon, String percentage) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
      child: Row(
        children: <Widget>[
          Icon(
            icon,
            color: Colors.grey,
            size: 30.0,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
          ),
          Text(
            percentage,
            style: TextStyle(
                fontFamily: 'Montserrat',
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16.0),
          )
        ],
      ),
    );
  }
}

class SelectedPhoto extends StatelessWidget {
  final int numberOfDots;
  final int photoIndex;

  SelectedPhoto({this.numberOfDots, this.photoIndex});

  Widget _inactivePhoto() {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(left: 8.0, right: 8.0),
        child: Container(
          width: 8.0,
          height: 8.0,
          decoration: BoxDecoration(
              color: Colors.grey, borderRadius: BorderRadius.circular(4.0)),
        ),
      ),
    );
  }

  Widget _activePhoto() {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(left: 8.0, right: 8.0),
        child: Container(
          width: 10.0,
          height: 10.0,
          decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(5.0),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey, spreadRadius: 0.0, blurRadius: 2.0)
              ]),
        ),
      ),
    );
  }

  List<Widget> buildDots() {
    List<Widget> dots = [];
    for (int i = 0; i < numberOfDots; ++i) {
      dots.add(i == photoIndex ? _activePhoto() : _inactivePhoto());
    }
    return dots;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center, children: buildDots()),
    );
  }
}