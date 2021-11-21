// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:one_ui/one_ui.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:soft/screens/results.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: OneUIAppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/BG.jpg'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(48.0),
            ),
          ),
        ),
        title: Center(
            child: Text('Hello,Welcome to Soft',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Rosarivo",
                    fontSize: 30))),
        toolbarHeight: 300,
      ),
      // ignore: prefer_const_literals_to_create_immutables
      body: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
            SizedBox(height: 15),
            Center(
              child: Text("How are you feeling today?",
                  style: TextStyle(
                      color: HexColor("#A9B1B3"),
                      fontSize: size.width * 0.07,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Rosarivo")),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "How are you today?",
                  fillColor: HexColor("#719732"),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 70.0, horizontal: 25.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(color: HexColor("#719732")),
                  ),
                  //fillColor: Colors.green
                ),
                keyboardType: TextInputType.text,
                style: TextStyle(
                  fontFamily: "Poppins",
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        OneUIIconButton(
                            onPressed: () {},
                            icon: Icon(
                              FontAwesomeIcons.compactDisc,
                              color: HexColor("#BAB8B8"),
                              size: 20,
                            )),
                        OneUIIconButton(
                          onPressed: () {},
                          icon: Icon(FontAwesomeIcons.microphone,
                              color: HexColor("#BAB8B8"), size: 35),
                        ),
                        OneUIIconButton(
                          onPressed: () {},
                          icon: Icon(FontAwesomeIcons.commentAlt,
                              color: HexColor("#BAB8B8"), size: 20),
                        ),
                      ]),
                ),
              ],
            ),
            SizedBox(height: 10),
            OneUIContainedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return Results();
                  }),
                );
              },
              child: const Text('Submit'),
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                onPrimary: Colors.white,
                shadowColor: Colors.greenAccent,
                elevation: 3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                minimumSize: Size(50, 40), //////// HERE
              ),
            ),

            /* OneUIBottomNavigationBar(
                currentIndex: _selectedIndex,
                onTap: (value) {
                  setState(() {
                    _selectedIndex = value;
                  });
                },
                items: const [
                  OneUIBottomNavigationBarItem(label: "Home"),
                  OneUIBottomNavigationBarItem(label: "More"),
                ],
              ),*/
            //width: size.width * .4,
          ])),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.green),
              child: Text(
                'Soft AI For Health',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            ListTile(
              title: const Text('About Soft',
                  style: TextStyle(color: Colors.grey)),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title:
                  const Text('Settings', style: TextStyle(color: Colors.grey)),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
