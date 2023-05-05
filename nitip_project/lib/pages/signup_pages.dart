import 'package:flutter/material.dart';
import 'package:nitip_project/components/my_textfiels.dart';
import 'package:nitip_project/components/signup_button.dart';
import 'package:nitip_project/components/square_tile.dart';

class SignupPage extends StatelessWidget {
  SignupPage({super.key});

  // text editing controllers
  final nameController = TextEditingController();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // sign user in method
  void signUserUp() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF56A5EC),
      body: SafeArea(
        child: SingleChildScrollView(
          reverse: true,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 1),

              // logo
              Image.asset('lib/images/nitip.png', width: 250),

              // join with us
              Text(
                'Join with us!',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 15),

              // username textfield
              MyTextField(
                controller: nameController,
                hintText: 'Name',
                obscureText: false,
              ),

              const SizedBox(height: 10),

              // password textfield
              MyTextField(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,
              ),

              const SizedBox(height: 10),

              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),

              const SizedBox(height: 10),

              const SizedBox(height: 15),

              // sign up button
              SignUp(
                onTap: signUserUp,
              ),

              const SizedBox(height: 10),

              // or continue with
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Or continue with',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 10),

              // google + facebook + twitter sign in buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  // google button
                  SquareTile(imagePath: 'lib/images/Google.png'),

                  SizedBox(width: 15),

                  // twitter button
                  SquareTile(imagePath: 'lib/images/Twitter.png'),

                  SizedBox(width: 15),

                  // facebook button
                  SquareTile(imagePath: 'lib/images/Facebook.png'),

                  SizedBox(width: 15)
                ],
              ),

              const SizedBox(height: 10),

              // not a member? register now
            ],
          ),
        ),
      ),
    );
  }
}
