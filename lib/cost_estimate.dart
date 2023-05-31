import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';

import 'buyer_page.dart';

class Cost_Estimate extends StatefulWidget {
  const Cost_Estimate({Key? key}) : super(key: key);

  @override
  State<Cost_Estimate> createState() => _Cost_EstimateState();
}

class _Cost_EstimateState extends State<Cost_Estimate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          Container(
            margin: EdgeInsets.only(right: 350),
            child: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => buyer_page(),
                      ));
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.grey,
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: DropDownTextField(
              textFieldDecoration: InputDecoration(
                hintText: 'What You Want to Build?',
                hintStyle: TextStyle(color: Colors.grey),
              ),
              clearOption: true,
              validator: (value) {
                if (value == null) {
                  return "Required field";
                } else {
                  return null;
                }
              },
              dropDownItemCount: 4,
              dropDownList: const [
                DropDownValueModel(
                  name: 'Marble',
                  value: "Marble",
                ),
                DropDownValueModel(name: 'Tiles', value: "Tiles"),
                DropDownValueModel(name: 'Wall', value: "Wall"),
                DropDownValueModel(
                  name: 'Wood',
                  value: "Wood",
                ),
                DropDownValueModel(
                  name: 'Bricks',
                  value: "Bricks",
                ),
              ],
              onChanged: (value) {},
            ),
          ),
        ],
      ),
    );
  }
}
