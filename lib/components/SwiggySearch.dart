import 'package:flutter/material.dart';

class SwiggySearch extends StatelessWidget {
  const SwiggySearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.only(top: 20),
      child: const SizedBox(
        width: 380,
        child: TextField(
          decoration: InputDecoration(
            suffixIcon: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Icon(
                  Icons.search,
                  size: 25,
                  color: Color(0xFF606060),
                ),
                Text(
                  '|',
                  style: TextStyle(fontSize: 25, color: Color(0xFFcfcfcf)),
                ),
                Icon(
                  Icons.mic,
                  color: Color(0xFFd2540a),
                  size: 25,
                ),
                SizedBox(width: 15,)
              ],
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            hintText: 'Dishes, restaurants, groceries - Find it ...',
          ),
        ),
      ),
    );
  }
}
