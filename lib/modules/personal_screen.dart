import 'package:flutter/material.dart';

class PersonalScreen extends StatelessWidget {
  const PersonalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.white,
        elevation: 0,
      ),
      body:
      Row(
        children: [
          SizedBox(width: 20,),
          Container(
            height: 50,
            child: Text("Profile",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),

          ),
        ],
      ),
    );
  }
}