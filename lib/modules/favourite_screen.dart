import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:find_job/shared/components/components.dart';
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
          var page_context = context;
          var cubit = FindJobCubit.get(context);
          return SafeArea(
            child: Scaffold(
              body: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Favourites",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height - 200,
                      child: ConditionalBuilder(
                          condition: cubit.favourite == true,
                          builder: (context) => ListView.separated(
                              itemBuilder: (context, index) =>
                                  buildJobItem(cubit: cubit, context: page_context),
                              separatorBuilder: (context, index) => separator(),
                              itemCount: 1),
                          fallback: (context) => Container(
                                child: Center(
                                  child: Text(
                                    'Add Favourite jobs',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              )),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
