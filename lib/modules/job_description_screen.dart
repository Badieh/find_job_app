import 'package:find_job/shared/components/components.dart';
import 'package:find_job/shared/cubit/cubit.dart';
import 'package:find_job/shared/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class JobDescriptionScreen extends StatelessWidget {
  const JobDescriptionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FindJobCubit(),
      child: BlocConsumer<FindJobCubit, FindJobStates>(
          listener: (context, state) {},
          builder: (context, state) {
            var cubit = FindJobCubit.get(context);
            return Scaffold(
              appBar: AppBar(
                title: Text(
                  'Job details',
                ),
                actions: [
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
              body: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // padding: EdgeInsets.all(30),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.location_on_outlined),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Text(
                                    'Jakarta-indonesia',
                                    style: TextStyle(
                                        color: const Color(0xffA9A9A9),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Icon(Icons.file_copy,
                                    color: const Color(0xffA9A9A9)),
                                Text(
                                  '300 Applicants',
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
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Description',
                              style: TextStyle(
                                  color: const Color(0xffA9A9A9),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                            Container(
                              height: 30,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  'Company',
                                  style: TextStyle(
                                      color: const Color(0xff1976D2),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          ]),
                    ),
                    Text(
                        'Twitter Indonesia is a solution for seafood addicts! We strive to express a positive impression and are committed to producing only good quality without preservatives food products.',
                        style: TextStyle(
                          color: const Color(0xffA9A9A9),
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.justify),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset('assets/images/web.svg',
                                  width: 30),
                              Text(
                                'Website',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                'www.twitter.com',
                                style: TextStyle(
                                  color: Colors.blueAccent,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset('assets/images/industry.svg',
                                  width: 30),
                              Text(
                                'Industry',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                'Socialmedia',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset('assets/images/company.svg',
                                  width: 30),
                              Text(
                                'Company size',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                '1-50 employee',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'Office address',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'Jl. Muara Baru Ujung Blok T No. 8 Pergudangan BOSCO, RT.22/RW.17, Penjaringan, North Jakarta City, Jakarta 14440',
                      style: TextStyle(
                        color: const Color(0xffA9A9A9),
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color(0xff1976D2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: MaterialButton(
                        onPressed: () {},
                        child: Text(
                          'Apply to this Job',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
