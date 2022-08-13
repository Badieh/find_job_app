import 'package:flutter/material.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
      padding: const EdgeInsets.only(left: 30, top: 60, right: 30),
      child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 50,
                  child: Text(
                    "Message",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 50,
                    child: Text(
                      "                        ...",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: const Color(0xffA9A9A9))),
              child: Row(
                children: [
                  Icon(Icons.search, color: const Color(0xffA9A9A9)),
                  Text(
                    'search',
                    style: TextStyle(color: const Color(0xffA9A9A9)),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  child: CircleAvatar(
                    child: Stack(
                      alignment: Alignment.bottomRight,

                      children: [
                        Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage( "assets/images/Picture.png")
                                  ,fit: BoxFit.cover)
                          ),

                        ),
                        Container(
                          height: 20,
                          width: 20,
                          decoration:
                          BoxDecoration(color: Colors.white
                              ,borderRadius: BorderRadius.circular(20)
                          ),
                        )
                        ,Container(
                          height: 17,
                          width: 17,
                          decoration:
                          BoxDecoration(color: Colors.blue
                          ,borderRadius: BorderRadius.circular(20)
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 300,
                      child: Row(

                        children: [
                          Text(
                            "Rois Maulana",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),

                          Text(
                            "17:50",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: 300,

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "We can talk now hafiz, i will ask you...",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400),
                          ),
                          Image.asset("assets/images/Notif.png")

                        ],
                      ),
                    )
                  ],
                )
              ],
            )
          ]),
    )));
  }
}
