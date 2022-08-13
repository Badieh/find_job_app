import 'package:find_job/shared/components/components.dart';
import 'package:find_job/shared/cubit/cubit.dart';
import 'package:find_job/shared/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FindJobCubit, FindJobStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = FindJobCubit.get(context);
        return Padding(
          padding: const EdgeInsets.only(left: 30, top: 60, right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Hello Hafiz',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff05182A)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Find your Dream jobs!',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff05182A)),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: const Color(0xffA9A9A9))),
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.notifications_none_outlined)),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
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
              const SizedBox(
                height: 20,
              ),
              Container(
                child: Stack(
                  children: [
                    SvgPicture.asset(
                      'assets/images/home_img1.svg',
                      width: 375,
                    ),
                    Positioned(
                      left: 19.2,
                      top: 30,
                      child: Text(
                        'Top Job in March',
                        style: TextStyle(
                            color: Color(0xff05182A),
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Positioned(
                      left: 19,
                      top: 60,
                      child: Text(
                        'UI Desinger',
                        style: TextStyle(
                            color: Color(0xff05182A),
                            fontSize: 17,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Positioned(
                        top: 100,
                        left: 16,
                        child: Container(
                          width: 100,
                          height: 37,
                          decoration: BoxDecoration(
                            color: Color(0xff1976D2),
                            borderRadius: BorderRadius.circular(10),
                            //border: Border.all(color: Color(0xff1976D2)),
                          ),
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Read More',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15),
                            ),
                          ),
                        ))
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Browse by Category',
                style: TextStyle(
                    fontSize: 22,
                    color: Color(0xff05182A),
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SvgPicture.asset(
                    'assets/images/remote.svg',
                    height: 100,
                  ),
                  SvgPicture.asset(
                    'assets/images/freelance.svg',
                    height: 100,
                  ),
                  SvgPicture.asset(
                    'assets/images/fulltime.svg',
                    height: 100,
                  ),
                  SvgPicture.asset(
                    'assets/images/internship.svg',
                    height: 100,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'New Jobs',
                      style: TextStyle(
                          fontSize: 22,
                          color: Color(0xff05182A),
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'See More',
                        style: TextStyle(
                            color: Color(0xff1976D2),
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ))
                ],
              ),
              Expanded(
                child: buildJobItem(cubit),
              ),
            ],
          ),
        );
      },
    );
  }
}
