import 'package:flutter/material.dart';

class CareerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Career Opportunities'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Center(
              child: Text(
                'Career Opportunities',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[800],
                ),
              ),
            ),
            SizedBox(height: 20),
            Wrap(
              spacing: 20,
              runSpacing: 20,
              children: [
                _buildCareerCard(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqt8UbSEbsLM-swLYEapdTeAEQbGEvD-OePA&s',
                    'Software Engineer',
                    'Develop and maintain software applications, working with cross-functional teams to deliver high-quality solutions.'
                ),
                _buildCareerCard(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXTF2APPWfLLtraIKNE5PJEDYZCZi3A3Sh3g&s',
                    'Project Manager',
                    'Lead project teams, manage budgets and timelines, and ensure successful project delivery while meeting client expectations.'
                ),
                _buildCareerCard(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSb2wSvjH5fM1hYs_JE-LMKF_j8kDAwgtO5IQ&s',
                    'UI/UX Designer',
                    'Design and create user-friendly interfaces, ensuring a positive user experience across all digital platforms.'
                ),
                _buildCareerCard(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlx2PulxVTBVLjS-RIPtAn8IaOLRW0WMtY7g&s',
                    'Data Scientist',
                    'Analyze and interpret complex data to help inform business decisions, using statistical techniques and machine learning.'
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCareerCard(String imageUrl, String title, String description) {
    return Container(
      width: 150,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(imageUrl, height: 150, fit: BoxFit.cover),
          SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 4),
          Text(
            description,
            style: TextStyle(fontSize: 14, color: Colors.blue[600]),
            textAlign: TextAlign.start,
          ),
        ],
      ),
    );
  }
}
