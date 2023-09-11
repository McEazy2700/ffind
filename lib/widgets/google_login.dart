import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GoogleLogin extends StatelessWidget {
  const GoogleLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.background,
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
                color:
                    Theme.of(context).colorScheme.onBackground.withOpacity(0.05),
                spreadRadius: 1,
                blurRadius: 3),
          ],
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "assets/Google-Logo.svg",
                height: 30,
              ),
              const SizedBox(
                width: 5,
              ),
              const Text("Login with google"),
            ],
          ),
        ),
      ),
    );
  }
}
