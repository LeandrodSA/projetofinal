import 'package:flutter/material.dart';

class myForm extends StatefulWidget {
  const myForm({Key? key}) : super(key: key);

  @override
  _myFormState createState() => _myFormState();
}

class _myFormState extends State<myForm> {
  final _formKey = GlobalKey<FormState>();
  String image = '';
  String name = '';
  String email = '';
  String state = '';
  String city = '';
  String street = '';
  String number = '';
  String phone = '';

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Color(0xFF243951),
        body: Form(
          key: _formKey,
          child: ListView(
            padding: EdgeInsets.all(16),
            children: <Widget>[
              Image.asset(
                'img/user.png',
                height: 250,
              ),
              const SizedBox(
                height: 18,
              ),
              buildFild('Nome Completo', name, 7),
              const SizedBox(
                height: 16,
              ),
              buildEmail(),
              const SizedBox(
                height: 16,
              ),
              buildFild('Estado', state, 1),
              const SizedBox(
                height: 16,
              ),
              buildFild('Cidade', city, 4),
              const SizedBox(
                height: 16,
              ),
              buildFild('Rua', street, 3),
              const SizedBox(
                height: 16,
              ),
              buildFild('Nº Casa', number, 0),
              const SizedBox(
                height: 16,
              ),
              buildFild('Telefone', phone, 10),
              const SizedBox(
                height: 16,
              ),
              ElevatedButton(
                child: Text(
                  'Cadastrar',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF000000),
                      fontSize: 36),
                ),
                onPressed: () {},
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
        ),
      );

  Widget buildFild(String label, String value, int num) => TextFormField(
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

  Widget buildEmail() => TextFormField(
        decoration: InputDecoration(
          labelText: 'Email',
          border: OutlineInputBorder(),
          filled: true,
          fillColor: Color(0xFFA0A8C5),
        ),
        validator: (arg) {
          final pattern = r'(^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9]+\.[a-zA-Z0-9-.]+$)';
          final regExp = RegExp(pattern);

          if (!regExp.hasMatch(arg!)) {
            return 'E-mail invalido';
          } else {
            return null;
          }
        },
        keyboardType: TextInputType.emailAddress,
        onChanged: (arg) => setState(() => email = arg),
      );
}
