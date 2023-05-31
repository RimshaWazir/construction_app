import 'package:flutter/material.dart';

import 'buyerpage_profile.dart';

class Buyer_privacy_policy extends StatefulWidget {
  const Buyer_privacy_policy({Key? key}) : super(key: key);

  @override
  State<Buyer_privacy_policy> createState() => _Buyer_privacy_policyState();
}

class _Buyer_privacy_policyState extends State<Buyer_privacy_policy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 60,
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
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.grey,
                )),
          ),
          Center(
            child: Text('Information Security',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
          ),
          SizedBox(
            height: 9,
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
                '\nWe take technical and administrative precautions to protect your data, '
                'but we cannot guarantee its safety against all types of fraud or misuse.'
                ' If you provide personal information,'
                ' we cannot verify its total security against all types of interception '),
          ),
          SizedBox(
            height: 9,
          ),
          Center(
            child: Text('Additional Options',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
          ),
          SizedBox(
            height: 9,
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              textAlign: TextAlign.left,
                'At any time, you may opt to review or change your account settings,'
                ' including contact information'
                'If you wish to delete your account, '
                'you may do so to remove most of your information,'
                'however, some identifying information will be retained to prevent fraud'
                'You may also opt-out of emails and other correspondences from our site at any time'
                'You may also opt-out of emails and other correspondences from our site at any time'
                'If you wish to delete your account'
                'You may also opt-out of emails and other correspondences from our site at any time'
                'You may also opt-out of emails and other correspondences from our site at any time'
                'You may also opt-out of emails and other correspondences from our site at any time'
                'You may also opt-out of emails and other correspondences from our site at any time'
                'You may also opt-out of emails and other correspondences from our site at any time'
                'You may also opt-out of emails and other correspondences from our site at any time'
                'You may also opt-out of emails and other correspondences from our site at any time'
                'You may also opt-out of emails and other correspondences from our site at any time'
                'You may also opt-out of emails and other correspondences from our site at any time'),
          ),
        ],
      ),
    );
  }
}
