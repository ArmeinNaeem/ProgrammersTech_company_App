import 'package:flutter/material.dart';
import 'services_screen.dart';
import 'career_screen.dart';
import 'about_us_screen.dart';
import 'contact_us_screen.dart';
import 'profile_screen.dart';
import 'payment_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6, // Updated number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: Text('ProgrammersTech'),
          backgroundColor: Colors.blue,
          actions: [
            IconButton(
              icon: Icon(Icons.person),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()),
                );
              },
            ),
          ],
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              Tab(text: 'Home'),
              Tab(text: 'Services'),
              Tab(text: 'Career'),
              Tab(text: 'About Us'),
              Tab(text: 'Contact Us'),
              Tab(text: 'Payment'), // Added Payment tab
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaYhM9vYyrE18z3q4IGlO45OpL35k7j5u-WQ&s'), // Replace with your profile image URL
                      radius: 30,
                    ),
                    SizedBox(width: 16),
                    Text(
                      'ProgrammersTech',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.work),
                title: Text('Services'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ServicesScreen()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.business_center),
                title: Text('Career'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CareerScreen()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.info),
                title: Text('About Us'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AboutUsScreen()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.contact_mail),
                title: Text('Contact Us'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ContactUsScreen()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.payment),
                title: Text('Payment'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PaymentScreen()), // Navigate to PaymentScreen
                  );
                },
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Home Tab
            SingleChildScrollView(
              child: Column(
                children: [
                  // Banner image
                  Container(
                    width: 400,
                    height: 300,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwzfU0c4GNSHtJtMz6yljd5PQpJfThovgtvQ&s'), // Replace with your image URL
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Welcome to ProgrammersTech!',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[800],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  Text(
                    'We provide the best tech solutions for your business.',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.blue[700],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 40),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ServicesScreen()),
                      );
                    },
                    child: Text('Our Services'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                      textStyle: TextStyle(fontSize: 18),
                    ),
                  ),
                  SizedBox(height: 20),
                  // Service images
                  Wrap(
                    spacing: 20,
                    runSpacing: 20,
                    children: [
                      _buildServiceCard('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRR-QpBzT9Srb0NfNAJ3IJisxc0u6yjAgRgmg&s', 'Software Development'),
                      _buildServiceCard('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQa4bC_MEVi1WkwpMCg4QKirsVX_sEBJV_1efJez0OiYJqhp0WSNyFWz7iylq5Xwfb1zug&usqp=CAU', 'Cloud Services'),
                      _buildServiceCard('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtMVS1rCKm9GIyCGeKJhm1wnPysVghQYSzDusN7OmEQ0CKTjRuoKhRMRcwqb9EOSSj4u4&usqp=CAU', 'Digital Marketing'),
                      _buildServiceCard('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTAIzgcU9WR3STiLBgQNFpZ_UFDaB8t3kXZhHysC7hkb05HNKdVc96QM8ljXwq7pWOeB6I&usqp=CAU', 'E-Commerce Solutions'),
                    ],
                  ),
                ],
              ),
            ),
            // Services Tab
            ServicesScreen(),
            // Career Tab
            CareerScreen(),
            // About Us Tab
            AboutUsScreen(),
            // Contact Us Tab
            ContactUsScreen(),
            // Payment Tab
            PaymentScreen(), // Add this line for the Payment tab
          ],
        ),
      ),
    );
  }

  Widget _buildServiceCard(String imageUrl, String title) {
    return Container(
      width: 200,
      child: Column(
        children: [
          Image.network(imageUrl, height: 200, fit: BoxFit.cover),
          SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
