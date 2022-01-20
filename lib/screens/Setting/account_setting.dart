import 'package:flutter/material.dart';

class AccountSetting extends StatelessWidget {
  const AccountSetting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
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
                    'Account Settings',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: CircleAvatar(
                radius: 35,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 40, bottom: 18, left: 12, right: 12),
              child: Column(
                children: [
                  Container(
                      alignment: Alignment.topLeft,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        shape: BoxShape.rectangle,
                        // border: Border.all(color: Colors.grey, width: 2)
                      ),
                      child: TextButton(
                          onPressed: () {},
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Full Name',
                                  style: TextStyle(color: Colors.grey[700]),
                                ),
                                Text(
                                  'Abdullah Iqbal',
                                  style: TextStyle(color: Colors.grey[700]),
                                ),
                              ]))),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      alignment: Alignment.topLeft,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        shape: BoxShape.rectangle,
                        // border: Border.all(color: Colors.grey, width: 2)
                      ),
                      child: TextButton(
                          onPressed: () {},
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Email Address',
                                  style: TextStyle(color: Colors.grey[700]),
                                ),
                                Text(
                                  'name@gmail.com',
                                  style: TextStyle(color: Colors.grey[700]),
                                ),
                              ]))),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      alignment: Alignment.topLeft,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        shape: BoxShape.rectangle,
                        // border: Border.all(color: Colors.grey, width: 2)
                      ),
                      child: TextButton(
                          onPressed: () {},
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Phone',
                                  style: TextStyle(color: Colors.grey[700]),
                                ),
                                Text(
                                  '0300-4500045',
                                  style: TextStyle(color: Colors.grey[700]),
                                ),
                              ]))),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text(
                      "Vehicle Details",
                      style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      alignment: Alignment.topLeft,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        shape: BoxShape.rectangle,
                        // border: Border.all(color: Colors.grey, width: 2)
                      ),
                      child: TextButton(
                          onPressed: () {},
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Model',
                                  style: TextStyle(color: Colors.grey[700]),
                                ),
                                Text(
                                  'Mehran',
                                  style: TextStyle(color: Colors.grey[700]),
                                ),
                              ]))),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      alignment: Alignment.topLeft,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        shape: BoxShape.rectangle,
                        // border: Border.all(color: Colors.grey, width: 2)
                      ),
                      child: TextButton(
                          onPressed: () {},
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Registration Number',
                                  style: TextStyle(color: Colors.grey[700]),
                                ),
                                Text(
                                  'LED 2888',
                                  style: TextStyle(color: Colors.grey[700]),
                                ),
                              ]))),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      alignment: Alignment.topLeft,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        shape: BoxShape.rectangle,
                        // border: Border.all(color: Colors.grey, width: 2)
                      ),
                      child: TextButton(
                          onPressed: () {},
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Color',
                                  style: TextStyle(color: Colors.grey[700]),
                                ),
                                Text(
                                  'White',
                                  style: TextStyle(color: Colors.grey[700]),
                                ),
                              ]))),
                ],
              ),
            ),
            Center(
              child: Column(
                children: [
                  Text(
                    'Account Status',
                    style: TextStyle(
                        color: Colors.indigo,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'ACTIVE',
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
