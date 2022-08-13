import 'package:bloc/bloc.dart';
import 'package:find_job/modules/favourite_screen.dart';
import 'package:find_job/modules/home_screen.dart';
import 'package:find_job/modules/messages_screen.dart';
import 'package:find_job/modules/personal_screen.dart';
import 'package:find_job/shared/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FindJobCubit extends Cubit<FindJobStates> {
  FindJobCubit() : super(FindJobInitialSate());

  static FindJobCubit get(context) => BlocProvider.of(context);

  List titles = [
    Text(
      'Hello Hafiz \nFind your Dream jobs!',
      style: TextStyle(fontSize: 20),
    ),
    Text('Favourites'),
    Text('Message'),
    Text('Personal')
  ];

  List<BottomNavigationBarItem> BottomNavBarItems = [
    BottomNavigationBarItem(
        activeIcon: Icon(Icons.home),
        icon: Icon(Icons.home_outlined),
        label: 'Home'),
    BottomNavigationBarItem(
        activeIcon: Icon(Icons.favorite),
        icon: Icon(Icons.favorite_border),
        label: 'Favourites'),
    BottomNavigationBarItem(
        activeIcon: Icon(Icons.message),
        icon: Icon(Icons.message_outlined),
        label: 'Messages'),
    BottomNavigationBarItem(
        activeIcon: Icon(Icons.person),
        icon: Icon(Icons.person_outline_outlined),
        label: 'Personal'),
  ];

  List screens = [
    HomeScreen(),
    FavouriteScreen(),
    MessagesScreen(),
    PersonalScreen()
  ];
  int currentIndex = 0;
  changeBottomNavBar(index) {
    currentIndex = index;
    emit(FindJobChangeBottomNavSate());
  }

  List favourites = [];
  addToFavourites() {

    emit(FindJobAddtoFavState());
  }

  removeFromFavourites() {

    emit(FindJobRemoveFromFavState());
  }
}
