import 'package:flutter/material.dart';

class TotalFare extends StatefulWidget {
  const TotalFare({Key? key}) : super(key: key);

  @override
  _TotalFareState createState() => _TotalFareState();
}

class _TotalFareState extends State<TotalFare> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              SizedBox(
                height: 80,
              ),
              Container(
                height: 190,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.indigo),
                child: Column(
                  children: [
                    SizedBox(
                      height: 70,
                    ),
                    Text(
                      'Total Fare Amount',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Rs 150',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 340,
              ),
              Text('Collect cash by hand!'),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                width: 190,
                child: MaterialButton(
                  color: Colors.indigo,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18)),
                  onPressed: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => TotalFare()));
                  },
                  child: Text("Fare Received",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
