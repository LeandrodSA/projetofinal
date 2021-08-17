import 'package:flutter/material.dart';

void main() {
  runApp(myForm());
}

class myForm extends StatefulWidget {
  const myForm({Key? key}) : super(key: key);

  @override
  _myFormState createState() => _myFormState();
}

class _myFormState extends State<myForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(),
    );
    new TextFormField(
      decoration: const InputDecoration(labelText: 'Nome'),
      keyboardType: TextInputType.text,
    );
  }
}
