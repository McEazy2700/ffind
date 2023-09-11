import 'package:flat_find/widgets/login.dart';
import 'package:flat_find/widgets/logo.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _email = TextEditingController(text: "");
  final TextEditingController _password = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: LayoutBuilder(builder: (context, contraints) {
            return Column(mainAxisSize: MainAxisSize.min, children: [
              LayoutBuilder(builder: (context, constraits) {
                if (constraits.maxWidth < 700) {
                  return Column(
                    children: [
                      const LoginTitle(),
                      const SizedBox(
                        height: 20,
                      ),
                      Login(email: _email, password: _password),
                    ],
                  );
                } else {
                  return Row(
                    children: [
                      const Expanded(
                        child: LoginTitle(),
                      ),
                      Expanded(
                        child: Login(email: _email, password: _password),
                      )
                    ],
                  );
                }
              })
            ]);
          }),
        ),
      ),
    );
  }
}

class LoginTitle extends StatelessWidget {
  const LoginTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Logo(),
        Text(
          "Welcome Back",
          style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
        ),
      ],
    );
  }
}
