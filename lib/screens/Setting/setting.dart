import 'package:flutter/material.dart';
import 'package:rio_driver_ui_screens/screens/Setting/account_setting.dart';

class Setting extends StatelessWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Container(
            height: 80,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.indigo,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(26),
                    bottomRight: Radius.circular(26))),
            child: Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    )),
                SizedBox(
                  width: 70,
                ),
                Text(
                  'Settings',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 40, bottom: 18, left: 12, right: 12),
            child: Column(
              children: [
                Container(
                    alignment: Alignment.topLeft,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.rectangle,
                        border: Border.all(color: Colors.grey, width: 2)),
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AccountSetting()));
                        },
                        child: Text(
                          'Account Setting',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ))),
                SizedBox(
                  height: 10,
                ),
                Container(
                    alignment: Alignment.topLeft,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.rectangle,
                        border: Border.all(color: Colors.grey, width: 2)),
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'About Us',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ))),
                SizedBox(
                  height: 10,
                ),
                Container(
                    alignment: Alignment.topLeft,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.rectangle,
                        border: Border.all(color: Colors.grey, width: 2)),
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Contact Us',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ))),
                SizedBox(
                  height: 10,
                ),
                Container(
                    alignment: Alignment.topLeft,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.rectangle,
                        border: Border.all(color: Colors.grey, width: 2)),
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Terms & Conditions',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ))),
                SizedBox(
                  height: 10,
                ),
                Container(
                    alignment: Alignment.topLeft,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.rectangle,
                        border: Border.all(color: Colors.grey, width: 2)),
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Privacy Policy',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ))),
              ],
            ),
          ),
          Center(
            child: Column(
              children: [
                Text(
                  'App Version',
                  style: TextStyle(
                      color: Colors.indigo,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Beta 01.00.01',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
