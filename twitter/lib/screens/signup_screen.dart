import 'package:flutter/material.dart';
import '../widgets/entry_field.dart';
import '../widgets/flat_button.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUp createState() => _SignUp();
}

class _SignUp extends State<SignUp> {
  // Define property types
  late TextEditingController _nameController;
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  late TextEditingController _confirmController;
  final _formKey = GlobalKey<FormState>();

  @override
  @mustCallSuper
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _confirmController = TextEditingController();
  }

  @override
  @mustCallSuper
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: BackButton(
            color: Theme.of(context).primaryColor,
          ),
          title: const Text('Sign Up'),
          backgroundColor: Colors.transparent,
          foregroundColor: Theme.of(context).primaryColorDark,
          elevation: 0,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
            child: Container(
                padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
                child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Container(
                            margin: const EdgeInsets.only(top: 100)
                        ),
                        CustomEntryField(
                          hint: 'Enter name',
                          controller: _nameController,
                          isPassword: false,
                        ),
                        CustomEntryField(
                          hint: 'Enter email',
                          controller: _emailController,
                          isPassword: false,
                        ),
                        CustomEntryField(
                          hint: 'Enter password',
                          controller: _passwordController,
                          isPassword: true,
                        ),
                        CustomEntryField(
                          hint: 'Confirm Password',
                          controller: _confirmController,
                          isPassword: true,
                        ),
                        CustomFlatButton(
                          onPressed: () {},
                          label: 'Sign up',
                        ),
                      ],
                    )))));
  }
}