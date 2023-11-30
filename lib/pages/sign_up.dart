import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/Login.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  // Create four text field controllers for the name, phone number, age, and password fields.
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // Create a global key for the sign-up button.
  // ignore: unused_field
  final GlobalKey _signUpButtonKey = GlobalKey();

  // Track the visibility of the password text.
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset(
                'assets/signUp.PNG',
                width: 400,
                height: 200,
                fit: BoxFit.cover,
              ),

              // Text field for the name.
              _buildTextField(
                controller: _nameController,
                labelText: 'Name',
              ),

              // Text field for the phone number.
              _buildTextField(
                controller: _phoneNumberController,
                labelText: 'Age',
                keyboardType: TextInputType.number,
              ),

              // Text field for the age.
              _buildTextField(
                controller: _ageController,
                labelText: 'Phone Number',
                keyboardType: TextInputType.number,
              ),

              // Text field for the password.
              _buildPasswordField(),

              const SizedBox(height: 20),

              // Sign-up button.
              ElevatedButton(
                onPressed: () {
                  // Handle sign-up logic.
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.green, backgroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: const BorderSide(
                        color: Colors.green, width: 2.0), // Green border
                  ),
                ),
                child: const Text(
                  'SIGN UP',
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(height: 10),

              // Row with text "Have an account?" and "Login now"
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Have an account?',
                    style: TextStyle(color: Colors.grey),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigate to the login page
                      // You can replace `YourLoginPage` with the actual class or route for your login page
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Login()),
                      );
                    },
                    child: const Text(
                      ' Login now',
                      style: TextStyle(color: Colors.green),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String labelText,
    bool obscureText = false,
    TextInputType? keyboardType,
    void Function(String)? onChanged,
  }) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: TextField(
        controller: controller,
        onChanged: onChanged,
        obscureText: obscureText,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          labelText: labelText,
          labelStyle: const TextStyle(color: Colors.green), // Green label text
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.green, width: 3.0), // Green border when focused
          ),
        ),
      ),
    );
  }

  Widget _buildPasswordField() {
    return Container(
      margin: const EdgeInsets.all(20),
      child: TextField(
        controller: _passwordController,
        obscureText: !_isPasswordVisible,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          labelText: 'Password',
          labelStyle: const TextStyle(color: Colors.green), // Green label text
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.green, width: 3.0), // Green border when focused
          ),
          suffixIcon: IconButton(
            icon: Icon(
              _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
              color: Colors.green,
            ),
            onPressed: () {
              setState(() {
                _isPasswordVisible = !_isPasswordVisible;
              });
            },
          ),
        ),
      ),
    );
  }
}
