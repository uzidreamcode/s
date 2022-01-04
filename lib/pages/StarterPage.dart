import 'package:flutter/material.dart';
import 'package:food_app/animations/FadeAnimation.dart';
import 'package:food_app/pages/HomePage.dart';
import 'package:food_app/pages/login.dart';
import 'package:page_transition/page_transition.dart';

class StarterPage extends StatefulWidget {
  @override
  _StarterPageState createState() => _StarterPageState();
}

class _StarterPageState extends State<StarterPage> with TickerProviderStateMixin{
  AnimationController _animationController;
  Animation<double> _animation;

  bool _textVisible = true;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 100)
    );

    _animation = Tween<double>(
      begin: 1.0,
      end: 25.0
    ).animate(_animationController);

    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();

    super.dispose();
  }

  void _onTap() {
    setState(() {
      _textVisible = false;
    });

    _animationController.forward().then((f) => 
      Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: LoginPage()))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/login.jpg'),
            fit: BoxFit.cover
          )
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.2),
              ]
            )
          ),
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FadeAnimation(.5, Text('Beli Banyak Lebih Hemat! Diskon Sampai 25%', style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),)),
                SizedBox(height: 10,),
                FadeAnimation(1, Text("Temukan Diskon Menarik \nSetiap Harinya", style: TextStyle(color: Colors.white, height: 1.4, fontSize: 18),)),
                SizedBox(height: 100,),
                FadeAnimation(1.2, 
                ScaleTransition(
                  scale: _animation,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                        colors: [
                          Colors.yellow,
                          Colors.orange
                        ]
                      )
                    ),
                    child: AnimatedOpacity(
                      opacity: _textVisible ? 1.0 : 0.0,
                      duration: Duration(milliseconds: 50),
                      child: MaterialButton(
                        onPressed: () => _onTap(),
                        minWidth: double.infinity,
                        child: Text("Start", style: TextStyle(color: Colors.white),),
                      ),
                    )
                  )),
                ),
                SizedBox(height: 30,),
                FadeAnimation(1.4,
                AnimatedOpacity(
                  opacity: _textVisible ? 1.0 : 0.0,
                  duration: Duration(milliseconds: 50),

                )),
                SizedBox(height: 30,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}