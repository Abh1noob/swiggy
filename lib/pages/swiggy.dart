import 'dart:ffi';

import 'package:flutter/material.dart';
import '../components/SwiggySearch.dart';

class Swiggy extends StatelessWidget {
  const Swiggy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            "Location to be implemented",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: const Color(0xFFeff0f0),
          elevation: 0),
      backgroundColor: const Color(0xFFf1f1f1),
      body: Container(
        padding: const EdgeInsets.fromLTRB(18, 18, 18, 18),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SwiggySearch(),
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Order-in or Dine-out,',
                          style:
                              TextStyle(color: Color(0xFF3a23a7), fontSize: 25),
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
                        child: InkWell(
                          onTap: () {},
                          child: Expanded(
                            flex: 5,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: const Color(0xFFfefefe),
                                boxShadow: const [
                                  BoxShadow(
                                      blurRadius: 100,
                                      blurStyle: BlurStyle.outer,
                                      color: Color.fromARGB(40, 0, 0, 0))
                                ],
                              ),
                              padding: const EdgeInsets.all(4),
                              margin: const EdgeInsets.all(8),
                              child: SizedBox(
                                height: 180,
                                child: Container(
                                  margin:
                                      const EdgeInsets.only(top: 15, left: 15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'FOOD DELIVERY',
                                        style: TextStyle(
                                            color: Color(0xFF2e2e2e),
                                            fontWeight: FontWeight.w900,
                                            fontSize: 20),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      const Text(
                                        'FROM RESTAURANTS',
                                        style: TextStyle(
                                            color: Color(0xFF888888),
                                            fontSize: 12),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Container(
                                        padding: const EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          gradient:
                                              const LinearGradient(colors: [
                                            Color(0xFFffdfd4),
                                            Colors.white,
                                            Colors.white,
                                          ], begin: Alignment.centerLeft),
                                        ),
                                        child: const Row(
                                          children: [
                                            Icon(
                                              Icons.percent,
                                              size: 12,
                                              color: Color(0xFFc2511b),
                                            ),
                                            Text(
                                              ' UPTO 60% OFF',
                                              style: TextStyle(
                                                  color: Color(0xFFc2511b),
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {},
                          child: Expanded(
                            flex: 5,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: const Color(0xFFfefefe),
                                boxShadow: const [
                                  BoxShadow(
                                      blurRadius: 100,
                                      blurStyle: BlurStyle.outer,
                                      color: Color.fromARGB(40, 0, 0, 0))
                                ],
                              ),
                              padding: const EdgeInsets.all(4),
                              margin: const EdgeInsets.all(8),
                              child: SizedBox(
                                height: 180,
                                child: Container(
                                  margin:
                                      const EdgeInsets.only(top: 15, left: 15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'INSTAMART',
                                        style: TextStyle(
                                            color: Color(0xFF2e2e2e),
                                            fontWeight: FontWeight.w900,
                                            fontSize: 20),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      const Text(
                                        'INSTANT GROCERY',
                                        style: TextStyle(
                                            color: Color(0xFF888888),
                                            fontSize: 12),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Container(
                                        padding: const EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          gradient:
                                              const LinearGradient(colors: [
                                            Color(0xFFffdfd4),
                                            Colors.white,
                                            Colors.white,
                                          ], begin: Alignment.centerLeft),
                                        ),
                                        child: const Row(
                                          children: [
                                            Icon(
                                              Icons.percent,
                                              size: 12,
                                              color: Color(0xFFc2511b),
                                            ),
                                            Text(
                                              ' UPTO 60% OFF',
                                              style: TextStyle(
                                                  color: Color(0xFFc2511b),
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {},
                          child: Expanded(
                            flex: 5,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: const Color(0xFFfefefe),
                                boxShadow: const [
                                  BoxShadow(
                                      blurRadius: 100,
                                      blurStyle: BlurStyle.outer,
                                      color: Color.fromARGB(40, 0, 0, 0))
                                ],
                              ),
                              padding: const EdgeInsets.all(4),
                              margin: const EdgeInsets.all(8),
                              child: SizedBox(
                                height: 180,
                                child: Container(
                                  margin:
                                      const EdgeInsets.only(top: 15, left: 15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'DINEOUT',
                                        style: TextStyle(
                                            color: Color(0xFF2e2e2e),
                                            fontWeight: FontWeight.w900,
                                            fontSize: 20),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      const Text(
                                        'EAT OUT & SAVE MORE',
                                        style: TextStyle(
                                            color: Color(0xFF888888),
                                            fontSize: 12),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Container(
                                        padding: const EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          gradient:
                                              const LinearGradient(colors: [
                                            Color(0xFFffdfd4),
                                            Colors.white,
                                            Colors.white,
                                          ], begin: Alignment.centerLeft),
                                        ),
                                        child: const Row(
                                          children: [
                                            Icon(
                                              Icons.percent,
                                              size: 12,
                                              color: Color(0xFFc2511b),
                                            ),
                                            Text(
                                              ' UPTO 50% OFF',
                                              style: TextStyle(
                                                  color: Color(0xFFc2511b),
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          margin: const EdgeInsets.all(8),
                          child: SizedBox(
                              height: 180,
                              child: Column(
                                children: [
                                  Expanded(
                                    child: InkWell(
                                      onTap: () {},
                                      child: Expanded(
                                        flex: 5,
                                        child: Container(
                                          margin: const EdgeInsets.fromLTRB(
                                              0, 0, 0, 5),
                                          width: 205,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            color: Colors.white,
                                            boxShadow: const [
                                              BoxShadow(
                                                  blurRadius: 100,
                                                  blurStyle: BlurStyle.outer,
                                                  color: Color.fromARGB(
                                                      40, 0, 0, 0))
                                            ],
                                          ),
                                          child: Container(
                                            padding: const EdgeInsets.all(4),
                                            margin: const EdgeInsets.all(8),
                                            child: const Row(
                                              children: [
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      'GENIE',
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xFF2e2e2e),
                                                          fontWeight:
                                                              FontWeight.w900,
                                                          fontSize: 20),
                                                    ),
                                                    Text(
                                                      'PICK-UP & DROP',
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xFF888888),
                                                          fontSize: 12),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: InkWell(
                                      onTap: () {},
                                      child: Expanded(
                                        flex: 5,
                                        child: Container(
                                          margin: const EdgeInsets.fromLTRB(
                                              0, 0, 0, 5),
                                          width: 205,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            color: Colors.white,
                                            boxShadow: const [
                                              BoxShadow(
                                                  blurRadius: 100,
                                                  blurStyle: BlurStyle.outer,
                                                  color: Color.fromARGB(
                                                      40, 0, 0, 0))
                                            ],
                                          ),
                                          child: Container(
                                            padding: const EdgeInsets.all(4),
                                            margin: const EdgeInsets.all(8),
                                            child: const Row(
                                              children: [
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      'MINIS',
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xFF2e2e2e),
                                                          fontWeight:
                                                              FontWeight.w900,
                                                          fontSize: 20),
                                                    ),
                                                    Text(
                                                      'UNIQUE FINDS',
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xFF888888),
                                                          fontSize: 12),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
