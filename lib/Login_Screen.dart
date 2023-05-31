import 'package:construction_app/bottom_nav.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late var _isSecurePassword = true;
  final _formKey = GlobalKey<FormState>();
  bool passToggle = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                  // margin: EdgeInsets.only(left: 40),
                  height: 270,
                  width: 270,
                  child: const Image(image: AssetImage('Assets/Logo.png'))),
              Padding(
                padding: const EdgeInsets.all(17),
                child: Center(
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter email";
                      } else if (!value.contains("@")) {
                        return "Please enter valid email";
                      }
                    },
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xffC5C5C7), width: 5)),
                      filled: true,
                      fillColor: Colors.white,
                      labelText: '   Phone Number or Email',
                      labelStyle: const TextStyle(
                          color: Color(0xffC5C5C7),
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            width: 2, color: Color(0xffF0F0F0)),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 1.5, color: Color(0xff502975)),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(17),
                child: Center(
                  child: TextFormField(
                    validator: (PassCurrentValue) {
                      RegExp regex = RegExp(
                          r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
                      var passNonNullValue = PassCurrentValue ?? "";
                      if (passNonNullValue.isEmpty) {
                        return ("Password is required");
                      } else if (passNonNullValue.length < 6) {
                        return ("Password Must be more than 5 characters");
                      } else if (!regex.hasMatch(passNonNullValue)) {
                        return ("Password should contain upper,lower,digit and Special character ");
                      }
                      return null;
                    },
                    obscureText: _isSecurePassword,
                    decoration: InputDecoration(
                      suffixIcon: togglePassword(),
                      border: const OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xffC5C5C7), width: 5)),
                      filled: true,
                      fillColor: Colors.white,
                      labelText: '   Password',
                      labelStyle: const TextStyle(
                          color: Color(0xffC5C5C7),
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            width: 2, color: Color(0xffF0F0F0)),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 1.5, color: Color(0xff502975)),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 200),
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff502975)),
                    )),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                height: 50,
                width: 140,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(23),
                      ),
                      primary: const Color(0xff502975),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Bottom_Nav(),
                            ));
                      }
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget togglePassword() {
    return IconButton(
        onPressed: () {
          setState(() {
            _isSecurePassword = !_isSecurePassword;
          });
        },
        icon: _isSecurePassword
            ? Icon(
                Icons.visibility_off,
                color: Colors.grey,
              )
            : Icon(
                Icons.visibility,
                color: Colors.grey,
              ));
  }
}
