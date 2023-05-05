import 'package:flutter/material.dart';
import 'package:nitip_project/pages/home_page.dart';

class SignUp extends StatelessWidget {
  final Function()? onTap;

  const SignUp({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(MaterialPageRoute(
        builder: (BuildContext context) => const HomePage(),
      )),
      child: Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsetsDirectional.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Center(
          child: Text(
            "Sign Up",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
