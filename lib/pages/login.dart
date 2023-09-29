import 'package:flutter/material.dart';
import 'package:swiggy/pages/swiggy.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    double swidth = (MediaQuery.of(context).size.width) * 0.01;
    double sheight = MediaQuery.of(context).size.height * 0.01;

    return Scaffold(
      appBar: AppBar(
        title: null,
        backgroundColor: const Color(0xFFeef1fa),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 5,
              child: Container(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                alignment: Alignment.bottomLeft,
                color: const Color(0xFFeef1fa),
                width: swidth * 100,
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          height: 64,
                          padding: EdgeInsets.zero,
                          child: const Text(
                            'LIVE',
                            style: TextStyle(
                              color: Color(0xFFd3d6de),
                              fontSize: 80,
                              fontWeight: FontWeight.w900,
                              height: 1,
                            ),
                          ),
                        ),
                        Container(
                          height: 64,
                          padding: EdgeInsets.zero,
                          child: const Text(
                            'FOR',
                            style: TextStyle(
                              color: Color(0xFFd3d6de),
                              fontSize: 80,
                              fontWeight: FontWeight.w900,
                              height: 1,
                            ),
                          ),
                        ),
                        Container(
                          height: 64,
                          padding: EdgeInsets.zero,
                          child: const Text(
                            'FOOD',
                            style: TextStyle(
                              color: Color(0xFFd3d6de),
                              fontSize: 80,
                              fontWeight: FontWeight.w900,
                              height: 1,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        )
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 60),
                      child: Transform.rotate(
                        angle: -0.2,
                        child: const CircleAvatar(
                          radius: 70,
                          backgroundImage: NetworkImage(
                              'https://classroomclipart.com/images/gallery/Clipart/Food/Fast_Food_Clipart/frankie-wrap-clipart.jpg'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
                    child: const Text(
                      "Account",
                      style: TextStyle(
                        fontSize: 22,
                        color: Color(0xFF1f2229),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: const Text(
                      "Login/Create Account to manage orders",
                      style: TextStyle(fontSize: 13, color: Color(0xFF959595)),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(8, 20, 8, 8),
                    child: SizedBox(
                      width: swidth * 90,
                      height: sheight * 5,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFd75536)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Swiggy()),
                          );
                        },
                        child: const Text('Login'),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'By clicking, I accept the',
                        style:
                            TextStyle(fontSize: 12, color: Color(0xFF959595)),
                      ),
                      Text(
                        ' Terms & Conditions',
                        style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF1f2229),
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        ' and ',
                        style:
                            TextStyle(fontSize: 12, color: Color(0xFF959595)),
                      ),
                      Text(
                        'Privacy Policy',
                        style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF1f2229),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                    width: 370,
                    height: 2,
                    child: DecoratedBox(
                        decoration: BoxDecoration(color: Color(0xFF23242a))),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  OutlinedButton(
                    style: ButtonStyle(
                        side: MaterialStateProperty.all(const BorderSide(
                            color: Color.fromARGB(255, 255, 255, 255),
                            width: 1.0,
                            style: BorderStyle.solid))),
                    child: Row(
                      children: [
                        const SizedBox(
                          height: 80,
                          child: Row(
                            children: [
                              Icon(
                                Icons.percent,
                                color: Colors.black,
                              ),
                              SizedBox(width: 20),
                              Text(
                                "Offers",
                                style: TextStyle(
                                  color: Color(0xFF1f2229),
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          padding: const EdgeInsets.only(left: 250),
                          child: const Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Color(0xFF171a1f),
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {},
                  ),
                  const SizedBox(
                    width: 370,
                    height: 2,
                    child: DecoratedBox(
                        decoration: BoxDecoration(color: Color(0xFFe5e5e5))),
                  ),


                  OutlinedButton(
                    style: ButtonStyle(
                      side: MaterialStateProperty.all(
                        const BorderSide(
                          color: Color.fromARGB(255, 255, 255, 255),
                          width: 1.0,
                          style: BorderStyle.solid,
                        ),
                      ),
                    ),
                    child: SizedBox(
                      height: 80,
                      child: Row(
                        children: [
                          const Icon(
                            Icons.email_outlined,
                            color: Color(0xFF1f2229),
                          ),
                          const SizedBox(width: 20),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Send Feedback",
                                style: TextStyle(
                                  color: Color(0xFF1f2229),
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                "App version 4.41.1(1171)",
                                style: TextStyle(
                                  color: Color(0xFF959595),
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                          Container(
                          alignment: Alignment.centerRight,
                          padding: const EdgeInsets.only(left: 140),
                          child: const Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Color(0xFF171a1f),
                            size: 20,
                          ),
                        ),
                          
                        ],
                      ),
                    ),
                    onPressed: () {
                      
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
