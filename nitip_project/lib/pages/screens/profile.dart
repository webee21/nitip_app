import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 300,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF56A5EC), Colors.lightBlue],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 30.0),
                CircleAvatar(
                  radius: 70.0,
                  backgroundImage: AssetImage('assets/avatar.png'),
                ),
                SizedBox(height: 10.0),
                Text(
                  'Kevin Susanto',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  'xccurate@gmail.com',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10.0),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Edit Profile',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Account',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          leading: Icon(Icons.location_on),
                          title: Text('Shipping Address'),
                          subtitle: Text('Jelambar, Jakarta Barat'),
                        ),
                        Divider(),
                        ListTile(
                          leading: Icon(Icons.credit_card),
                          title: Text('Payment Methods'),
                          subtitle: Text('Visa ending in 1234'),
                        ),
                        Divider(),
                        ListTile(
                          leading: Icon(Icons.language),
                          title: Text('Language'),
                          subtitle: Text('Indonesia'),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.0),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
