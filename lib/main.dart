import 'package:flutter/material.dart';
import 'package:progress_indicator/progress_indicator.dart';


void main() => runApp(MaterialApp(
      home: MyApp(),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0xff3D444A)),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color(0xff3D444A),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                height: 25,
                width: MediaQuery.of(context).size.width * 0.85,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                        stops: [32, 0],
                        colors: [Color(0xff32383E), Color(0xff17191C)])),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 4, right: 4),
                    child: BarProgress(
                      percentage: 30,
                      backColor: Color(0xff000000),
                      gradient: LinearGradient(stops: [
                        100,
                        100,
                        100,
                        100,
                        0
                      ], colors: [
                        Color(0xffFFE2CD),
                        Color(0xffFEC2E7),
                        Color(0xffC9E7FF),
                        Color(0xff86FEF4),
                        Color(0xffFFFFFF),
                      ]),
                      showPercentage: false,
                      stroke: 10,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
