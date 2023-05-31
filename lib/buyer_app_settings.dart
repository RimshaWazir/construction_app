import 'package:flutter/material.dart';
import 'package:theme_manager/theme_manager.dart';
import 'buyer_privacy_policy.dart';
import 'buyerpage_profile.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';

class Buyer_app_settings extends StatefulWidget {
  const Buyer_app_settings({Key? key}) : super(key: key);

  @override
  State<Buyer_app_settings> createState() => _Buyer_app_settingsState();
}

class _Buyer_app_settingsState extends State<Buyer_app_settings> {
  bool status = false;
  final _controller = ValueNotifier<bool>(false);
  String dropdownvalue = 'English';

  var items = [
    'English',
    'Urdu',
    'Hindi',
    'Punjabi',
  ];

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
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.grey,
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Notifications',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                AdvancedSwitch(
                  controller: _controller,
                  activeColor: Colors.blue,
                  inactiveColor: Colors.grey,
                  activeChild: Text('ON'),
                  inactiveChild: Text('OFF'),
                  borderRadius: BorderRadius.all(const Radius.circular(15)),
                  width: 63.0,
                  height: 30.0,
                  enabled: true,
                  disabledOpacity: 0.5,
                ),
              ],
            ),
          ),
          Divider(
            thickness: 2,
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Dark Mode',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 30,
                ),
                TextButton(
                  onPressed: () => ThemeManager.of(context)
                      .setBrightnessPreference(BrightnessPreference.dark),
                  child: const Text(
                    'Enable',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                TextButton(
                  onPressed: () => ThemeManager.of(context)
                      .setBrightnessPreference(BrightnessPreference.light),
                  child: const Text(
                    'Disable',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            thickness: 2,
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Languages',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                DropdownButton(
                  value: dropdownvalue,
                  icon: const Icon(Icons.keyboard_arrow_down),
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue!;
                    });
                  },
                ),
              ],
            ),
          ),
          Divider(
            thickness: 2,
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.all(12),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Buyer_privacy_policy(),
                    ));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Privacy Policy',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                  Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
          ),
          Divider(
            thickness: 2,
          ),
        ],
      ),
    );
  }
}
