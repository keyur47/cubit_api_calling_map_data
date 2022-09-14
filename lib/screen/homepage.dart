import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:signin/cubit/cricket_cubit_bloc.dart';
import 'package:signin/cubit/cricket_cubit_state.dart';

class ApiScreen extends StatelessWidget {
  const ApiScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cubit Api Calling"),
      ),
      body: Center(
        child: BlocBuilder<CricketFetchCubit, CricketFetchState>(
          builder: (context, state) {
            if (state is CricketFetchLoading) {
              return const CircularProgressIndicator();
            } else if (state is CricketFetchError) {
              return Text(state.failuer.Message);
            } else if (state is CricketFetchLoaded) {
              return ListView.builder(
                itemCount: state.cricketList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black.withOpacity(0.1)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: RichText(
                                text: TextSpan(
                                  text: 'No:- ',
                                  style: const TextStyle(
                                      color: Colors.black,
                                      height: 1.5,
                                      fontWeight: FontWeight.w800),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: '${state.cricketList[index].id}',
                                      style: const TextStyle(
                                          color: Colors.black,
                                          height: 1.5,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: RichText(
                                text: TextSpan(
                                  text: 'Id Name:- ',
                                  style: const TextStyle(
                                      color: Colors.black,
                                      height: 1.5,
                                      fontWeight: FontWeight.w800),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text:
                                          '${state.cricketList[index].rocketId}',
                                      style: const TextStyle(
                                          color: Colors.black,
                                          height: 1.5,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: RichText(
                                text: TextSpan(
                                  text: 'Country:- ',
                                  style: const TextStyle(
                                      color: Colors.black,
                                      height: 1.5,
                                      fontWeight: FontWeight.w800),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text:
                                          '${state.cricketList[index].country}',
                                      style: const TextStyle(
                                          color: Colors.black,
                                          height: 1.5,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: RichText(
                                text: TextSpan(
                                  text: 'Company:- ',
                                  style: const TextStyle(
                                      color: Colors.black,
                                      height: 1.5,
                                      fontWeight: FontWeight.w800),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text:
                                          '${state.cricketList[index].company}',
                                      style: const TextStyle(
                                          color: Colors.black,
                                          height: 1.5,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: RichText(
                                text: TextSpan(
                                  text: 'Description:- ',
                                  style: const TextStyle(
                                      color: Colors.black,
                                      height: 1.5,
                                      fontWeight: FontWeight.w800),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text:
                                          '${state.cricketList[index].description}',
                                      style: const TextStyle(
                                          color: Colors.black,
                                          height: 1.5,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            }
            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
