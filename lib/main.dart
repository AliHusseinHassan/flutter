import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Columns and Rows',
      // theme: ThemeData(
      //   primarySwatch: Color.fromARGB(255, 230, 99, 76),
      // ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Profile'),
              IconButton(
                icon: const Icon(Icons.settings),
                onPressed: () {
                  // Add your settings icon onPressed functionality here
                },
              ),
            ],
          ),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 50.0,
                  color: const Color.fromARGB(255, 250, 173, 173),
                  // Set your desired background color here
                  child: Row(
                    children: [
                      Text(
                        '  General'.toUpperCase(),
                        style: const TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 224, 86, 76),
                          letterSpacing: 1,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 5.0),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(Icons.favorite),
                      SizedBox(width: 4.0),
                      Text('Favourite Doctor'),
                      Spacer(),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10.0),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(Icons.notifications),
                      SizedBox(width: 4.0),
                      Text(
                        'Notifications',
                        style: TextStyle(fontSize: 15),
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 5.0),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(Icons.card_travel),
                      SizedBox(width: 4.0),
                      Text('My cards'),
                      Spacer(),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 5.0),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(Icons.star_border_purple500),
                      SizedBox(width: 4.0),
                      Text('Rate Us'),
                      Spacer(),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 5.0),
                Container(
                  height: 50.0,
                  color: const Color.fromARGB(255, 250, 173, 173),
                  child: Row(
                    children: [
                      Text(
                        '  about app'.toUpperCase(),
                        style: const TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 224, 86, 76),
                          letterSpacing: 1,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 5.0),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(Icons.privacy_tip),
                      SizedBox(width: 4.0),
                      Text('About App '),
                      SizedBox(width: 270),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 5.0),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(Icons.privacy_tip),
                      SizedBox(width: 4.0),
                      Text('Privacy Policy '),
                      SizedBox(width: 248),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 5.0),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(Icons.terminal_sharp),
                      SizedBox(width: 4.0),
                      Text('Terms & Conditions'),
                      SizedBox(width: 215),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 5.0),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(Icons.help_center),
                      SizedBox(width: 4.0),
                      Text('Help & Support'),
                      SizedBox(width: 243),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 5.0),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(Icons.person),
                      SizedBox(width: 4.0),
                      Text('Sign In'),
                      SizedBox(width: 295),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 5.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.home),
                          onPressed: () {
                            // Add your functionality for the Home button here
                          },
                        ),
                        const Text('Home'),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.search),
                          onPressed: () {
                            // Add your functionality for the Search button here
                          },
                        ),
                        const Text('Bookings'),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.settings),
                          onPressed: () {
                            // Add your functionality for the Settings button here
                          },
                        ),
                        const Text('Hospitals'),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.person,
                            color: Color.fromARGB(255, 236, 110, 52),
                          ),
                          onPressed: () {
                            // Add your functionality for the Notifications button here
                          },
                          splashColor: const Color.fromARGB(255, 186, 41, 223),
                          highlightColor: Colors.transparent,
                          focusColor: Colors.black26,
                        ),
                        const Text('Profile'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
     ),
);
}
}
