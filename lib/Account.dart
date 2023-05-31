import 'package:construction_app/Login_Screen.dart';
import 'package:construction_app/account_as.dart';
import 'package:flutter/material.dart';

class Account_creation extends StatefulWidget {
  const Account_creation({Key? key}) : super(key: key);

  @override
  State<Account_creation> createState() => _Account_creationState();
}

class _Account_creationState extends State<Account_creation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.only(left: 52),
              height: 270,
              width: 270,
              child: const Image(image: AssetImage('Assets/Logo.png'))),
          const SizedBox(
            height: 40,
          ),
          Container(
            margin: const EdgeInsets.only(left: 80),
            height: 60,
            width: 160,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(23),
                  ),
                  primary: const Color(0xff502975),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (ontext) => Account_As(),
                      ));
                },
                child: const Text(
                  'Create Account',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                )),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            margin: const EdgeInsets.only(left: 70),
            child: const Text(
              'OR',
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.only(left: 70),
            child: const Text(
              'Already have an Account?',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ),
          const SizedBox(
            height: 35,
          ),
          Container(
            margin: const EdgeInsets.only(left: 80),
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Login(),
                      ));
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
    );
  }
}
