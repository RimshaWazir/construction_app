import 'package:construction_app/account_as_worker.dart';
import 'package:flutter/material.dart';

class Manpower extends StatefulWidget {
  const Manpower({Key? key}) : super(key: key);

  @override
  State<Manpower> createState() => _ManpowerState();
}

class _ManpowerState extends State<Manpower> {
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
              Container(
                  // margin: EdgeInsets.only(left: 40),
                  height: 270,
                  width: 270,
                  child: const Image(image: AssetImage('Assets/Logo.png'))),
              const Padding(
                padding: EdgeInsets.all(15),
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.grey,
                      ),
                      hintText: '   Full Name',
                      labelStyle: TextStyle(
                          color: Color(0xffC5C5C7),
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Center(
                  child: TextFormField(
                    // validator: (value) {
                    //   if (value!.isEmpty) {
                    //     return "Please enter email";
                    //   } else if (!value.contains("@")) {
                    //     return "Please enter valid email";
                    //   }
                    // },
                    decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.mail,
                        color: Colors.grey,
                      ),
                      hintText: '  Email(Optional)',
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(15),
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.business_outlined,
                        color: Colors.grey,
                      ),
                      hintText: '   Business Name(Optional)',
                      labelStyle: TextStyle(
                          color: Color(0xffC5C5C7),
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(15),
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.location_on_outlined,
                        color: Colors.grey,
                      ),
                      hintText: '   Address(Optional)',
                      labelStyle: TextStyle(
                          color: Color(0xffC5C5C7),
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(15),
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.person_pin_rounded,
                        color: Colors.grey,
                      ),
                      hintText: '   Number of Employess',
                      labelStyle: TextStyle(
                          color: Color(0xffC5C5C7),
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(15),
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.handyman,
                        color: Colors.grey,
                      ),
                      hintText: '   Number of Projects Completed',
                      labelStyle: TextStyle(
                          color: Color(0xffC5C5C7),
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
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
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.grey,
                      ),
                      hintText: '   Confirm Password',
                      labelStyle: const TextStyle(
                          color: Color(0xffC5C5C7),
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
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
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.grey,
                      ),
                      hintText: '   Confirm Password',
                      labelStyle: const TextStyle(
                          color: Color(0xffC5C5C7),
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
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
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //       builder: (context) => const WorkerAccount(),
                        //     ));
                      }
                    },
                    child: const Text(
                      'SignUp',
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
            ? const Icon(
                Icons.visibility_off,
                color: Colors.grey,
              )
            : const Icon(
                Icons.visibility,
                color: Colors.grey,
              ));
  }
}
