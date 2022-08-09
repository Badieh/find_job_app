import 'package:find_job/shared/cubit/cubit.dart';
import 'package:find_job/shared/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FindJobScreen extends StatelessWidget {
  const FindJobScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => FindJobCubit(),
      child: BlocConsumer<FindJobCubit, FindJobStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = FindJobCubit.get(context);
          return Scaffold(
            body: cubit.screens[cubit.currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              showUnselectedLabels: false,
              showSelectedLabels: false,
              items: cubit.BottomNavBarItems,
              type: BottomNavigationBarType.fixed,
              currentIndex: cubit.currentIndex,
              onTap: (index){
                cubit.changeBottomNavBar(index);
              },
            ),
          );
        },
      ),
    );
  }
}
