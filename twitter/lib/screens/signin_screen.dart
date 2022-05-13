import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/app_state.dart';
import '../widgets/entry_field.dart';
import '../widgets/flat_button.dart';
import './signup_screen.dart';
import './forgot_password_screen.dart';
import './home_screen.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignIn createState() => _SignIn();
}

class _SignIn extends State<SignIn> {
  // Define property types
  late TextEditingController _emailController;
  late TextEditingController _passwordController;

  @override
  @mustCallSuper
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  @mustCallSuper
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Center(
                child: Column(
      children: [
        Container(
            margin: const EdgeInsets.fromLTRB(0, 75, 0, 100),
            child: Text(
              'Sign In',
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(color: Theme.of(context).primaryColorDark),
            )),
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
        CustomFlatButton(
          label: 'Submit',
          onPressed: () {
            // Set state to
            Provider.of<AppState>(context, listen: false).setpageIndex = 0;
            // Navigate to home screen
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomeScreen()),
            );
          },
        ),
        GestureDetector(
            // On tap of text, navigate to sign up screen
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SignUp()));
            },
            child: Text(
              'Sign up',
              // Default theme text style, but color changed from black
              style: Theme.of(context)
                  .textTheme
                  .bodyText2!
                  .copyWith(color: Theme.of(context).primaryColor, height: 2.5),
            )),
        GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ForgetPassword()));
            },
            child: Text(
              'Forget password?',
              // Default theme text style, but color changed from black
              style: Theme.of(context)
                  .textTheme
                  .bodyText2!
                  .copyWith(color: Theme.of(context).primaryColor, height: 2.5),
            )),
      ],
    ))));
  }
}