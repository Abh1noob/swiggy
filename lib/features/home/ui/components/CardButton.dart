import 'package:flutter/material.dart';

class CardButton extends StatelessWidget {
  const CardButton(
      {required Function() this.onTap,
      required this.description,
      required this.discount,
      this.colCard = true,
      required this.title,
      super.key}
      );
  final Function onTap;
  final String title;
  final String description;
  final String discount;
  final bool colCard;

  @override
  Widget build(BuildContext context) {
    return colCard
        ? Container(
            child: InkWell(
              onTap: onTap(),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xFFfefefe),
                  boxShadow: const [
                    BoxShadow(
                        blurRadius: 110,
                        blurStyle: BlurStyle.outer,
                        color: Color.fromARGB(40, 0, 0, 0))
                  ],
                ),
                padding: const EdgeInsets.all(4),
                margin: const EdgeInsets.all(8),
                child: SizedBox(
                  height: 180,
                  child: Container(
                    margin: const EdgeInsets.only(top: 15, left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                              color: Color(0xFF2e2e2e),
                              fontWeight: FontWeight.w900,
                              fontSize: 17),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          description,
                          style: const TextStyle(
                              color: Color(0xFF888888), fontSize: 11),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            gradient: const LinearGradient(colors: [
                              Color(0xFFffdfd4),
                              Colors.white,
                              Colors.white,
                            ], begin: Alignment.centerLeft),
                          ),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.percent,
                                size: 11,
                                color: Color(0xFFc2511b),
                              ),
                              Text(
                                discount,
                                style: const TextStyle(
                                    color: Color(0xFFc2511b),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10),
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
          )
        //colCard
        : Container(
            child: InkWell(
              onTap: onTap(),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xFFfefefe),
                  boxShadow: const [
                    BoxShadow(
                        blurRadius: 110,
                        blurStyle: BlurStyle.outer,
                        color: Color.fromARGB(40, 0, 0, 0))
                  ],
                ),
                padding: const EdgeInsets.all(4),
                margin: const EdgeInsets.all(8),
                child: SizedBox(
                  height: 80,
                  child: Container(
                    margin: const EdgeInsets.only(top: 15, left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                              color: Color(0xFF2e2e2e),
                              fontWeight: FontWeight.w900,
                              fontSize: 17),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          description,
                          style: const TextStyle(
                              color: Color(0xFF888888), fontSize: 11),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
  }
}
