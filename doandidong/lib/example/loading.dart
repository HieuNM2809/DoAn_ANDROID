import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingPage1 extends StatefulWidget {
  @override
  _SpinKitScreenState createState() => _SpinKitScreenState();
}

class _SpinKitScreenState extends State<LoadingPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter SpinKit Sampl"),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.redAccent,
          child: Column(
            children: [
              SizedBox(height: 80),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      SpinKitRotatingPlain(color: Colors.white),
                      SizedBox(height: 10),
                      Text("Rotating Plain",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 17))
                    ],
                  ),
                  Column(
                    children: [
                      SpinKitDoubleBounce(color: Colors.white),
                      SizedBox(height: 10),
                      Text("Double Bounce",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18))
                    ],
                  ),
                  Column(
                    children: [
                      SpinKitWave(
                          color: Colors.white, type: SpinKitWaveType.start),
                      SizedBox(height: 10),
                      Text("Wave",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18))
                    ],
                  ),
                ],
              ),
              SizedBox(height: 80),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      SpinKitWanderingCubes(
                          color: Colors.white, shape: BoxShape.circle),
                      SizedBox(height: 10),
                      Text("Wandering Cubes",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16))
                    ],
                  ),
                  Column(
                    children: [
                      SpinKitFadingFour(
                          color: Colors.white, shape: BoxShape.rectangle),
                      SizedBox(height: 10),
                      Text("Fading Four",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18))
                    ],
                  ),
                  Column(
                    children: [
                      SpinKitFadingCube(color: Colors.white),
                      SizedBox(height: 10),
                      Text("Fading Cube",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18))
                    ],
                  ),
                ],
              ),
              SizedBox(height: 80),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      SpinKitPulse(color: Colors.white),
                      SizedBox(height: 10),
                      Text("Pulse",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18))
                    ],
                  ),
                  Column(
                    children: [
                      SpinKitChasingDots(color: Colors.white),
                      SizedBox(height: 11),
                      Text("Chasing Dots",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18))
                    ],
                  ),
                  Column(
                    children: [
                      SpinKitThreeBounce(color: Colors.white),
                      SizedBox(height: 11),
                      Text("Three Bounce",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18))
                    ],
                  ),
                ],
              ),
              SizedBox(height: 80),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      SpinKitCircle(color: Colors.white),
                      SizedBox(height: 10),
                      Text("Circle",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18))
                    ],
                  ),
                  Column(
                    children: [
                      SpinKitCubeGrid(size: 51.0, color: Colors.white),
                      SizedBox(height: 10),
                      Text("Cube Grid",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18))
                    ],
                  ),
                  Column(
                    children: [
                      SpinKitFadingCircle(color: Colors.white),
                      SizedBox(height: 10),
                      Text("Fading Circle",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18))
                    ],
                  ),
                ],
              ),
              SizedBox(height: 80),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      SpinKitRotatingCircle(color: Colors.white),
                      SizedBox(height: 10),
                      Text("Rotaing Circle",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18))
                    ],
                  ),
                  Column(
                    children: [
                      SpinKitFoldingCube(color: Colors.white),
                      SizedBox(height: 10),
                      Text("Folding Cube",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18))
                    ],
                  ),
                  Column(
                    children: [
                      SpinKitPumpingHeart(color: Colors.white),
                      SizedBox(height: 10),
                      Text("Pumping Heart",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18))
                    ],
                  ),
                ],
              ),
              SizedBox(height: 80),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      SpinKitDualRing(color: Colors.white),
                      SizedBox(height: 10),
                      Text("Dual Ring",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18))
                    ],
                  ),
                  Column(
                    children: [
                      SpinKitHourGlass(color: Colors.white),
                      SizedBox(height: 11),
                      Text("Hour Glass",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18))
                    ],
                  ),
                ],
              ),
              SizedBox(height: 80),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      SpinKitFadingGrid(
                          color: Colors.white, shape: BoxShape.rectangle),
                      SizedBox(height: 10),
                      Text("Fading Grid",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18))
                    ],
                  ),
                  Column(
                    children: [
                      SpinKitRing(color: Colors.white),
                      SizedBox(height: 10),
                      Text("Ring",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18))
                    ],
                  ),
                  Column(
                    children: [
                      SpinKitRipple(color: Colors.white),
                      SizedBox(height: 10),
                      Text("Ripple",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18))
                    ],
                  ),
                ],
              ),
              SizedBox(height: 80),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      SpinKitSpinningCircle(color: Colors.white),
                      SizedBox(height: 10),
                      Text("Spinning Circle",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18))
                    ],
                  ),
                  Column(
                    children: [
                      SpinKitSquareCircle(color: Colors.white),
                      SizedBox(height: 10),
                      Text("Square Circle",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18))
                    ],
                  ),
                ],
              ),
              SizedBox(height: 80),
            ],
          ),
        ),
      ),
    );
  }
}
