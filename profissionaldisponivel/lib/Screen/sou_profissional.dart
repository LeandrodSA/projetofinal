import 'package:flutter/material.dart';
import 'package:profissionaldisponivel/Screen/form_control.dart';
import 'package:profissionaldisponivel/Screen/login.dart';

class SouProfissional extends StatefulWidget {
  const SouProfissional({Key? key}) : super(key: key);

  @override
  _SouProfissionalState createState() => _SouProfissionalState();
}

class _SouProfissionalState extends State<SouProfissional> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(color: Color(0xFF243951)),
      padding: EdgeInsets.symmetric(horizontal: 2, vertical: 60),
      child: Column(
        children: [
          Text(
            'Sou Profissional',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 38,
              decoration: TextDecoration.none,
              color: Colors.white,
            ),
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 2, vertical: 30)),
          Image.asset(
            'img/contrato.jpg',
            height: 250,
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 2, vertical: 30)),
          Text(
            'Já tenho conta',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              decoration: TextDecoration.none,
              color: Colors.white,
            ),
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 2, vertical: 5)),
          ElevatedButton(
            child: Text(
              'Login',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF000000),
                  fontSize: 36),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Login()),
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
          Padding(padding: EdgeInsets.symmetric(horizontal: 2, vertical: 30)),
          Text(
            'Quero me cadastrar',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              decoration: TextDecoration.none,
              color: Colors.white,
            ),
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 2, vertical: 5)),
          ElevatedButton(
            child: Text(
              'Cadastro',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF000000),
                  fontSize: 36),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => myForm()),
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
