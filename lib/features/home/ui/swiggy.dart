import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swiggy/features/home/bloc/home_bloc.dart';
import 'package:swiggy/features/home/ui/components/CardButton.dart';
import 'package:swiggy/features/login/ui/login.dart';
import '../../../components/SwiggySearch.dart';

class Swiggy extends StatelessWidget {
  final HomeBloc homeBloc = HomeBloc();
  Swiggy({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      bloc: homeBloc,
      listenWhen: (previous, current) => current is HomeActionState,
      buildWhen: (previous, current) => current is! HomeActionState,
      listener: (context, state) {
        // TODO: implement listener
        if (state is HomeNavigateToFoodDeliveryPageActionState) {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const Login()),
          );
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              "Location to be implemented",
              style: TextStyle(color: Colors.black),
            ),
            backgroundColor: const Color(0xFFeff0f0),
            elevation: 0,
            actions: [
              IconButton(
                padding: const EdgeInsets.only(right: 35),
                icon: Icon(
                  Icons.account_circle_rounded,
                  size: 40,
                  color: Colors.grey[800],
                ),
                // Within the `FirstRoute` widget
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Login()),
                  );
                },
              ),
            ],
          ),
          backgroundColor: const Color(0xFFf1f1f1),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.fromLTRB(18, 18, 18, 18),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SwiggySearch(
                      description: 'Dishes, restaurants, groceries - Find it ...',
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.fromLTRB(11, 0, 0, 0),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Order-in or Dine-out,',
                                style: TextStyle(
                                    color: Color(0xFF3a23a7), fontSize: 25),
                              ),
                              Row(
                                children: [
                                  Text('Time for ',
                                      style: TextStyle(
                                          color: Color(0xFF3a23a7),
                                          fontSize: 25,
                                          fontWeight: FontWeight.w900)),
                                  Text(
                                    'even',
                                    style: TextStyle(
                                        color: Color(0xFF3a23a7),
                                        fontSize: 25,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    'ing',
                                    style: TextStyle(
                                        color: Color(0xFF3a23a7),
                                        fontSize: 25,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    ' plaaans!',
                                    style: TextStyle(
                                        color: Color(0xFF3a23a7), fontSize: 25),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                                child: CardButton(
                                    title: "INSTAMART",
                                    description: "INSTANT GROCERY",
                                    discount: "UPTO 60% OFF",
                                    onTap: () {})),
                            Expanded(
                                child: CardButton(
                                    title: "FOOD DELIVERY",
                                    description: "FROM RESTAURANTS",
                                    discount: "UPTO 60% OFF",
                                    onTap: () {})),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: CardButton(
                                    title: "DINEOUT",
                                    description: "EAT OUT & SAVE MORE",
                                    discount: "UPTO 50% OFF",
                                    onTap: () {})),
                            Expanded(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: CardButton(
                                            colCard: false,
                                            title: "GENIE",
                                            description: "PICK UP AND DROP",
                                            discount: "UPTO 50% OFF",
                                            onTap: () {}),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: CardButton(
                                            colCard: false,
                                            title: "MINIS",
                                            description: "UNIQUE FINDS",
                                            discount: "UPTO 50% OFF",
                                            onTap: () {}),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
