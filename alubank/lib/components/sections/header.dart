import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Column(children: <Widget>[
            Text('\$1000.00'),
            Text('Balanço Disponível')
          ]),
          Icon(Icons.account_circle)
        ],
      ),
    );
  }
}
