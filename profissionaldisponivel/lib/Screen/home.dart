import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:profissionaldisponivel/Screen/sou_profissional.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(color: Color(0xFF243951)),
      padding: EdgeInsets.symmetric(horizontal: 2, vertical: 60),
      child: Column(
        children: [
          Text(
            'Profissional\nDisponivel',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 48,
              decoration: TextDecoration.none,
              color: Colors.white,
            ),
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 2, vertical: 20)),
          Image.asset(
            'img/profissional.jpg',
            height: 250,
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 2, vertical: 20)),
          Text(
            'Quem Você é?',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 36,
              decoration: TextDecoration.none,
              color: Colors.white,
            ),
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 2, vertical: 20)),
          ElevatedButton(
            child: Text(
              'Sou Profissional',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF000000),
                  fontSize: 36),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SouProfissional()),
              );
            },
            style: ElevatedButton.styleFrom(
              primary: Color(0xFF3F71F0),
              minimumSize: Size(320, 80),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 2, vertical: 20)),
          ElevatedButton(
            child: Text(
              'Sou Cliente',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF000000),
                  fontSize: 36),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SouProfissional()),
              );
            },
            style: ElevatedButton.styleFrom(
              primary: Color(0xFF3F71F0),
              minimumSize: Size(320, 80),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
