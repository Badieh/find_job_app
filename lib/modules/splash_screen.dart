import 'package:find_job/layout/find_jop_layout.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: SvgPicture.asset("assets/images/splash.svg",),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.only(left: 30),
            alignment: Alignment.centerLeft,
            child: Text(
              "Welcome",
              style: TextStyle(fontSize: 25),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            padding: EdgeInsets.only(left: 30, right: 30),
            alignment: Alignment.centerLeft,
            child: Text(
              "Search for vacancies from top companies and find your dream career!",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 20),
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20)),
                      height: 60,
                      width: 160,
                    ),
                    Positioned(
                      left: 1,
                      top: 1,
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          "Register",
                          style: TextStyle(
                              fontSize: 20, color: Colors.blue.shade800),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        height: 58,
                        width: 158,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 20, right: 30),
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20)),
                      height: 60,
                      width: 160,
                    ),
                    Positioned(
                      left: 1,
                      top: 1,
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          "Login",
                          style: TextStyle(
                              fontSize: 20, color: Colors.blue.shade800),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        height: 58,
                        width: 158,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FindJobScreen()));
            },
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color:  Color(0xff1976D2), borderRadius: BorderRadius.circular(20)),
              child: Text(
                "Start Exploring",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              width: 350,
              height: 60,
            ),
          )
        ],
      ),
    );
  }
}
