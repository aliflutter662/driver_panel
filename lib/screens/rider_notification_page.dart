import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:rio_driver_ui_screens/screens/accept_ride_page.dart';
import 'package:rio_driver_ui_screens/screens/arrived_on_spot_page.dart';

class RiderNotification extends StatefulWidget {
  const RiderNotification({Key? key}) : super(key: key);

  @override
  _RiderNotificationState createState() => _RiderNotificationState();
}

class _RiderNotificationState extends State<RiderNotification> {
  Completer<GoogleMapController> _controllerGoogleMap = Completer();

  GoogleMapController? newGoogleMapControler;
  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            GoogleMap(
                mapType: MapType.normal,
                myLocationButtonEnabled: true,
                initialCameraPosition: _kGooglePlex,
                onMapCreated: (GoogleMapController controller) {
                  _controllerGoogleMap.complete(controller);
                  newGoogleMapControler = controller;
                }),
            Positioned(
                top: 30,
                left: 20,
                child: Container(
                    height: 60,
                    child: Card(
                      child: IconButton(
                        icon: Icon(Icons.menu),
                        color: Colors.indigo,
                        iconSize: 35,
                        onPressed: () {},
                      ),
                    ))),
            Positioned(
                top: 30,
                right: 20,
                child: Container(
                    height: 60,
                    child: Card(
                      child: IconButton(
                        icon: Icon(Icons.notification_add),
                        color: Colors.indigo,
                        iconSize: 35,
                        onPressed: () {},
                      ),
                    ))),
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 370,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(34),
                          topRight: Radius.circular(34)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 16,
                          //spreadRadius: 0.5,
                          //  offset: Offset(0.7, 0.7),
                        ),
                      ]),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12, right: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'New Order',
                              style: TextStyle(
                                  color: Colors.indigo,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                            SizedBox(
                              width: 190,
                            ),
                            Icon(
                              Icons.close_rounded,
                              color: Colors.indigo,
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12, right: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 25,
                              child: MaterialButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(22)),
                                color: Colors.grey[200],
                                onPressed: () {},
                                child: Text(
                                  '3 min',
                                  style: TextStyle(color: Colors.indigo),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 25,
                              child: MaterialButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(22)),
                                color: Colors.grey[200],
                                onPressed: () {},
                                child: Text(
                                  '2 km',
                                  style: TextStyle(color: Colors.indigo),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 2,
                        color: Colors.grey,
                      ),
                      Container(
                        height: 70,
                        // color: Colors.indigo,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 28, right: 28),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.indigo,
                                    radius: 5,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Driver\'s Current Location',
                                    style: TextStyle(
                                      color: Colors.indigo,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: Colors.indigo,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Rider\'s Location ',
                                    style: TextStyle(
                                      color: Colors.indigo,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Divider(
                        thickness: 2,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 24, right: 24),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 35,
                                  backgroundImage:
                                      AssetImage('images/third_pic.jpg'),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Abdullah',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.indigo),
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          width: 50,
                                          decoration: BoxDecoration(
                                            color: Colors.indigo,
                                            borderRadius:
                                                BorderRadius.circular(22),
                                          ),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.star,
                                                size: 24,
                                                color: Colors.white,
                                              ),
                                              Text(
                                                '4.5',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.indigo,
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.call,
                                    color: Colors.white,
                                  )),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.indigo,
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.message,
                                    color: Colors.white,
                                  )),
                            ),
                            SizedBox(
                              width: 110,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(
                                  height: 0,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 65, right: 0),
                                  child: Text(
                                    'CASH',
                                    style: TextStyle(color: Colors.indigo),
                                  ),
                                ),
                                Text(
                                  'Rs, 120 - Rs, 150',
                                  style: TextStyle(color: Colors.indigo),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 85, right: 85),
                        child: Container(
                          height: 50,
                          width: double.infinity,
                          child: MaterialButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16)),
                            color: Colors.indigo,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ArrivedPage()));
                            },
                            child: Text(
                              'PickUp Rider',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
