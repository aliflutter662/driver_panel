import 'dart:async';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:rio_driver_ui_screens/screens/About/about.dart';
import 'package:rio_driver_ui_screens/screens/About/app_privacy.dart';
import 'package:rio_driver_ui_screens/screens/Setting/setting.dart';
import 'package:rio_driver_ui_screens/screens/notifications.dart';
import 'package:rio_driver_ui_screens/screens/search_rider_page.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  GlobalKey<ScaffoldState> _scaffoldKEY = GlobalKey<ScaffoldState>();
  Completer<GoogleMapController> _controllerGoogleMap = Completer();

  GoogleMapController? newGoogleMapControler;
  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKEY,
      drawer: Drawer(
          child: Container(
        color: Colors.indigo,
        child: ListView(
          children: [
            Container(
                color: Colors.indigo,
                child: DrawerHeader(
                    child: Container(
                  color: Colors.indigo,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage(
                          "images/third_pic.jpg",
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        "Zayd",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )
                    ],
                  ),
                  // color: Colors.indigo,
                ))),
            Divider(thickness: 1, color: Colors.white),
            ListTile(
                leading: Icon(Icons.message, color: Colors.white),
                title: Text(
                  "Messages",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) =>   MyWalet()),

                  //   );
                },
                trailing: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 15,
                  child: Text(
                    '1',
                    style: TextStyle(color: Colors.indigo),
                  ),
                )),
            Divider(thickness: 1, color: Colors.white),
            ListTile(
              leading:
                  Icon(Icons.monetization_on_outlined, color: Colors.white),
              title: Text(
                "Earnings",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              onTap: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => InviteFriend()));
              },
            ),
            ListTile(
              leading: Icon(Icons.history, color: Colors.white),
              title: Text(
                "History",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //       builder: (context) =>   SuportPage()),

                // );
              },
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.white),
              title: Text(
                "Settings",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Setting()));
              },
            ),
            ListTile(
              leading: Icon(Icons.support, color: Colors.white),
              title: Text(
                "Online Support",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              onTap: () {},
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              leading: Icon(Icons.contact_page, color: Colors.white),
              title: Text(
                "Contact us",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              onTap: () {
                _showMyDialog();
              },
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              leading: Icon(Icons.account_box_outlined, color: Colors.white),
              title: Text(
                "About us",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AboutUs()));
              },
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              leading: Icon(Icons.privacy_tip, color: Colors.white),
              title: Text(
                "App Privacy",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AppPrivacy()));
              },
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              leading: Icon(Icons.logout, color: Colors.white),
              title: const Text(
                'Log Out',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {},
            ),
          ],
        ),
      )),
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
                        onPressed: () {
                          _scaffoldKEY.currentState!.openDrawer();
                        },
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
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Notifications()));
                        },
                      ),
                    ))),
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 225,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(34),
                          topRight: Radius.circular(34)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 16,
                          spreadRadius: 0.5,
                          offset: Offset(0.7, 0.7),
                        ),
                      ]),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 18, horizontal: 24),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 70, right: 70),
                          child: Divider(
                            color: Colors.black45,
                            thickness: 2,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: Container(
                              color: Colors.white,
                              child: CircleAvatar(
                                radius: 70,
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 20,
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    SearchRider()));
                                      },
                                      icon: Icon(
                                        Icons.arrow_upward_sharp,
                                        size: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      ' Go!',
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                            ))
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            'Contact us',
            style: TextStyle(color: Colors.grey),
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton.icon(
                      icon: FaIcon(
                        FontAwesomeIcons.whatsapp,
                        color: Colors.indigo,
                      ),
                      label: Text(
                        'WhatsApp:03207172727',
                        style: TextStyle(color: Colors.grey),
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    Divider(),
                    TextButton.icon(
                      icon: FaIcon(FontAwesomeIcons.mailBulk,
                          color: Colors.indigo),
                      label: Text(
                        'Email Address:contact@heyrio.co',
                        style: TextStyle(color: Colors.grey),
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    Divider(),
                    TextButton.icon(
                      icon:
                          FaIcon(FontAwesomeIcons.weebly, color: Colors.indigo),
                      label: Text(
                        'Website:http://heyrio.co',
                        style: TextStyle(color: Colors.grey),
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    Divider(),
                    TextButton.icon(
                      icon: FaIcon(FontAwesomeIcons.facebook,
                          color: Colors.indigo),
                      label: Text(
                        'Facebook page: https://www.facebook.com/heyrio.co/',
                        style: TextStyle(color: Colors.grey),
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    Divider(),
                    TextButton.icon(
                      icon: FaIcon(FontAwesomeIcons.instagram,
                          color: Colors.indigo),
                      label: Text(
                        'Instagram: heyrio.co',
                        style: TextStyle(color: Colors.grey),
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    Divider(),
                    TextButton.icon(
                      icon: FaIcon(FontAwesomeIcons.addressCard,
                          color: Colors.indigo),
                      label: Text(
                        'Street address: Valencia town, Lahore, Punjab, Pakistan-54100',
                        style: TextStyle(color: Colors.grey),
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
          // actions: <Widget>[
          //   TextButton(
          //     child: const Text('Approve'),
          //     onPressed: () {
          //       Navigator.of(context).pop();
          //     },
          //   ),
          // ],
        );
      },
    );
  }
}
