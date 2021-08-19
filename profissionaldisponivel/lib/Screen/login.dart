import 'package:flutter/material.dart';
import 'package:profissionaldisponivel/Screen/home.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Color(0xFF243951),
        body: ListView(
          padding: EdgeInsets.all(16),
          children: <Widget>[
            Text(
              'Login Profissional',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 48,
                decoration: TextDecoration.none,
                color: Colors.white,
              ),
            ),
            Padding(padding: EdgeInsets.symmetric(horizontal: 2, vertical: 40)),
            Image.asset(
              'img/aceito.jpg',
              height: 300,
            ),
            Padding(padding: EdgeInsets.symmetric(horizontal: 2, vertical: 20)),
            buildField('Email', email, 10),
            Padding(padding: EdgeInsets.symmetric(horizontal: 2, vertical: 20)),
            buildField('Senha', password, 8),
            Padding(padding: EdgeInsets.symmetric(horizontal: 2, vertical: 20)),
            ElevatedButton(
              child: Text(
                'Login',
                style: TextStyle(,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF000000),
                    fontSize: 36),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
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

  Widget buildField(String label, String value, int num) => TextFormField(
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(),
          filled: true,
          fillColor: Color(0xFFA0A8C5),
        ),
        validator: (arg) {
          if (arg!.length <= num) {
            return 'O $label deve ter mais de $num caracteres';
          } else {
            return null;
          }
        },
        onChanged: (arg) => setState(() => value = arg),
      );
}
