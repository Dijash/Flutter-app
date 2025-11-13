import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 209, 192, 253),
      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.deepPurple[300],
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
              ),
              Positioned(
                bottom: 12,
                child: CircleAvatar(
                  radius: 80,
                  child: CircleAvatar(
                    radius: 75,
                    backgroundImage: AssetImage('assets/images/pp.jpg'),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              padding: const EdgeInsets.all(16),
              height: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'John Doe',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    'Software Engineer',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'This is a brief bio about John Doe. He is a software engineer with a passion for mobile app development and UI/UX design.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 30),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 6,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              children: const [
                ListTile(
                  leading: Icon(Icons.email, color: Colors.deepPurple),
                  title: Text('john.doe@example.com'),
                ),
                Divider(height: 0),
                ListTile(
                  leading: Icon(Icons.phone, color: Colors.deepPurple),
                  title: Text('+977 9762883484'),
                ),
                Divider(height: 0),
                ListTile(
                  leading: Icon(Icons.location_on, color: Colors.deepPurple),
                  title: Text('Kathmandu, Nepal'),
                ),
                Divider(height: 0),
                ListTile(
                  leading: Icon(Icons.language, color: Colors.deepPurple),
                  title: Text('Languages'),
                ),
                Divider(height: 0),
                ListTile(
                  leading: Icon(Icons.logout, color: Colors.deepPurple),
                  title: Text('Logout'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
