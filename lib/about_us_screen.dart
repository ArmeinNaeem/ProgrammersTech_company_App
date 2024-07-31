import 'package:flutter/material.dart';

class AboutUsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Center(
              child: Text(
                'About ProgrammersTech',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[800],
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'ProgrammersTech is a leading technology solutions provider specializing in creating innovative and effective software solutions for businesses of all sizes. Our team of dedicated professionals is committed to delivering high-quality services and solutions that drive success and growth for our clients.',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.blue[700],
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20),
            Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpO9eTdMtFseXVouyKsIfchjnAAamyv4pxcA&s',
              height: 300,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Our mission is to deliver high-quality tech solutions that meet the diverse needs of our clients. We strive to be at the forefront of technology, using the latest tools and methodologies to provide cutting-edge solutions. Our vision is to empower businesses with the technology they need to succeed in an ever-evolving digital landscape.',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.blue[700],
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'At ProgrammersTech, we believe in building strong partnerships with our clients. We work closely with each client to understand their unique challenges and goals, ensuring that our solutions are tailored to their specific needs. Our team’s expertise spans across various domains, including software development, cloud services, digital marketing, and more.',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.blue[700],
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Join us on our journey to transform the technology landscape and achieve remarkable results. Whether you’re a business seeking innovative solutions or a talented individual looking to be part of a dynamic team, we invite you to connect with us and explore the opportunities at ProgrammersTech.',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.blue[700],
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
