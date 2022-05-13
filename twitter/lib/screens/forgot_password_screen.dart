import 'package:flutter/material.dart';
import '../widgets/entry_field.dart';
import '../widgets/flat_button.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  _ForgetPassword createState() => _ForgetPassword();
}

class _ForgetPassword extends State<ForgetPassword> {
  late TextEditingController _emailController;

  @override
  @mustCallSuper
  void initState() {
    super.initState();
    _emailController = TextEditingController();
  }

  @override
  @mustCallSuper
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: BackButton(
            color: Theme.of(context).primaryColor,
          ),
          title: const Text('Forget Password'),
          backgroundColor: Colors.transparent,
          foregroundColor: Theme.of(context).primaryColorDark,
          elevation: 0,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                margin: const EdgeInsets.fromLTRB(0, 150, 0, 25),
                child: Text(
                  'Forget Password',
                  // Default theme text style, but theme changed from gray
                  style: Theme.of(context)
                      .textTheme
                      .headline4!
                      .copyWith(color: Theme.of(context).primaryColorDark),
                )),
                Text(
          'Enter your email address below to receive password reset instructions.',
          textAlign: TextAlign.center,
          // Default theme text style, but color changed from black
          style: Theme.of(context)
              .textTheme
              .bodyText2!.copyWith(color: Theme.of(context).primaryColorLight, height: 1.25),
        ),
            CustomEntryField(
              hint: 'Enter email',
              controller: _emailController,
              isPassword: false,
            ),
            CustomFlatButton(
              onPressed: () {},
              label: 'Sign up',
            ),
          ],
        )))
        );
  }
}