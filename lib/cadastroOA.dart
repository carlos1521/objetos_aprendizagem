import 'package:flutter/material.dart';

class CadastroOA extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: new AppBar(title: new Text("Cadastro de Novo OA"),
        ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0),
          child: RegisterForm(),
        ),
      ),
    );
  }
}

class RegisterForm extends StatefulWidget {
  const RegisterForm({Key key}) : super(key: key);

  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _agreedToTOS = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Tipo',
            ),
            validator: (String value) {
              if (value.trim().isEmpty) {
                return 'Tipo é obrigatorio';
              }
            },
          ),
          const SizedBox(height: 16.0),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Área',
            ),
            validator: (String value) {
              if (value.trim().isEmpty) {
                return 'Área é obrigatorio';
              }
            },
          ),
          const SizedBox(height: 16.0),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Título',
            ),
            validator: (String value) {
              if (value.trim().isEmpty) {
                return 'Título é obrigatoria';
              }
            },
          ),
          const SizedBox(height: 16.0),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Descrição',
            ),
            validator: (String value) {
              if (value.trim().isEmpty) {
                return 'Descrição é obrigatorio';
              }
            },
          ),
          const SizedBox(height: 16.0),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'URL',
            ),
            validator: (String value) {
              if (value.trim().isEmpty) {
                return 'URL é obrigatorio';
              }
            },
          ),          
          Row(
            children: <Widget>[
              const Spacer(),
              OutlineButton(
                highlightedBorderColor: Colors.black,
                onPressed: _submittable() ? _submit : null,
                child: const Text('Cadastrar'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  bool _submittable() {
    return _agreedToTOS;
  }

  void _submit() {
    _formKey.currentState.validate();
    print('Form submitted');
  }

  void _setAgreedToTOS(bool newValue) {
    setState(() {
      _agreedToTOS = newValue;
    });
  }
}