import 'package:flutter/material.dart';

import 'buyerpage_profile.dart';

class Buyer_prof_security extends StatefulWidget {
  const Buyer_prof_security({Key? key}) : super(key: key);

  @override
  State<Buyer_prof_security> createState() => _Buyer_prof_securityState();
}

class _Buyer_prof_securityState extends State<Buyer_prof_security> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Container(
            margin: EdgeInsets.only(right: 330),
            child: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Buyer_Profile(),
                      ));
                },
                icon: Icon(Icons.arrow_back,color: Colors.grey,)),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.grey,
                  ),
                  hintText: '   Current Password',
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
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.grey,
                  ),
                  hintText: '   Add a New Password',
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
              child: TextField(
                decoration: InputDecoration(
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
        ],
      ),
    );
  }
}
