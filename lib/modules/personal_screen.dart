import 'package:flutter/material.dart';

class PersonalScreen extends StatelessWidget {
  const PersonalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 50,
                  child: Text(
                  "Profile",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 50,
                    child: Text(
                      "                        ...",
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset("assets/images/back_profile.png"),
                Positioned(
                  top: 0,
                  child: Image.asset("assets/images/profile.png"),
                ),
                Positioned(
                  top: 80,
                  child: Container(
                    height: 50,
                    child: Text(
                      "Hafizdzaki",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Positioned(
                  top: 105,
                  child: Container(
                    height: 50,
                    child: Text(
                      "Senior UI/UX Designer",
                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                Positioned(
                    top: 130,
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Text(
                                "31",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Applied",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Column(
                            children: [
                              Text(
                                "17",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Reviewed",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Column(
                            children: [
                              Text(
                                "5",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Contacted",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                SizedBox(width: 20,),
                Text(
                  "ACCOUNT",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Container(
              width: 380,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 20,),
                      Image.asset("assets/images/personal.png"),
                      SizedBox(width: 15,),
                      Text(
                        "Personal Data",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Icon(Icons.arrow_forward_ios),

                ],
              ),
            ),
            SizedBox(height: 20,),

            Container(
              width: 380,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 20,),
                      Image.asset("assets/images/resume.png"),
                      SizedBox(width: 15,),
                      Text(
                        "Resume & My info",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Icon(Icons.arrow_forward_ios),

                ],
              ),
            ),
            SizedBox(height: 20,),

            Container(
              width: 380,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 20,),
                      Image.asset("assets/images/my_app.png"),
                      SizedBox(width: 15,),
                      Text(
                        "My Application",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Icon(Icons.arrow_forward_ios),

                ],
              ),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                SizedBox(width: 20,),
                Text(
                  "Other",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),

            Container(
              width: 380,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 20,),
                      Image.asset("assets/images/setting.png"),
                      SizedBox(width: 15,),
                      Text(
                        "Settings",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Icon(Icons.arrow_forward_ios),

                ],
              ),
            ),
            SizedBox(height: 20,),

          ],
        ),
      ),
    );
  }
}
