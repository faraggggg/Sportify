import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/Login.dart';
import 'package:flutter_application_1/pages/sign_up.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white10,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/new welcome.svg',
                height: 100,
                //width: 200,
              ),
              const SizedBox(
                height: 40,
              ),
              //const Text('Welcome to Sportify', style: TextStyle(fontSize: ,color: Colors.green)),
              //const Text('application', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Login()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white, // Background color
                  side: const BorderSide(
                      color: Colors.green, width: 2.0), // Border color
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20, vertical: 10), // Padding
                ),
                child: const Text(
                  'LOGIN',
                  style: TextStyle(
                      color: Color.fromARGB(255, 123, 148, 160),
                      fontWeight: FontWeight.bold), // Text color to dark gray
                ), // Button text
              ),

              const SizedBox(height: 10),

              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const SignUp()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                ),
                child: const Text(
                  'SIGN UP',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
