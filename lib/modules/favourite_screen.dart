import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:find_job/shared/cubit/cubit.dart';
import 'package:find_job/shared/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FindJobCubit, FindJobStates>(
      listener: (context, state) {},
      builder: (context, state) {

        return Container();
      },
    );
  }
}
