import 'package:find_job/modules/job_description_screen.dart';
import 'package:find_job/shared/cubit/cubit.dart';
import 'package:flutter/material.dart';

Widget separator() => Padding(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: Container(
        width: double.infinity,
        height: 1,
        color: Colors.grey,
      ),
    );

Widget buildJobItem({required FindJobCubit cubit, required context}) => InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => JobDescriptionScreen(),
            ));
      },
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Color(0xffA9A9A9)),
        ),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Row(
            children: [
              Container(
                child: Image.asset(
                  'assets/images/logo.png',
                  scale: 0.7,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[200]),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Twitter',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff05182A)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Remote UI/UX Desinger',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff05182A)),
                    ),
                  ],
                ),
              ),
              IconButton(
                  onPressed: () {
                    if (cubit.favourite == false) {
                      cubit.addToFavourites();
                    } else {
                      cubit.removeFromFavourites();
                    }
                  },
                  icon: cubit.favourite
                      ? Icon(
                          Icons.favorite_outlined,
                          color: Colors.red,
                        )
                      : Icon(Icons.favorite_outline))
            ],
          ),
          Row(
            children: [
              Icon(Icons.location_on_outlined),
              SizedBox(
                width: 10,
              ),
              Text(
                'Jakarta-indonesia',
                style: TextStyle(
                    color: const Color(0xffA9A9A9),
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
          Row(
            children: [
              Icon(Icons.monetization_on_outlined),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Text(
                  '\$500 - \$1K / Month',
                  style: TextStyle(
                      color: const Color(0xff1976D2),
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Text(
                '1 hour ago',
                style: TextStyle(
                    color: const Color(0xffA9A9A9),
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
        ]),
      ),
    );

Widget buildMessageItem() => Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
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
                        image: DecorationImage(
                            image: AssetImage("assets/images/Picture.png"),
                            fit: BoxFit.cover)),
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  Container(
                    height: 17,
                    width: 17,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20)),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Rois Maulana",
                          style:
                              TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Text(
                        "17:50",
                        style:
                            TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "We can talk now hafiz, i will ask you...",
                          style:
                              TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                        ),
                      ),
                      Image.asset("assets/images/Notif.png")
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
