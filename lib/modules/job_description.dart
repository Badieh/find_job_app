import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../shared/cubit/cubit.dart';
import '../shared/cubit/states.dart';

class JobDescription extends StatelessWidget {
  const JobDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FindJobCubit, FindJobStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = FindJobCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              title: Text('Job details'),
              actions: [],
            ),
          );
        });
  }
}
