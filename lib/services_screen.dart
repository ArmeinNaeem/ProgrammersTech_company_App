import 'package:flutter/material.dart';

class ServicesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Our Services'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Center(
              child: Text(
                'Our Services',
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
                _buildServiceCard(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRR-QpBzT9Srb0NfNAJ3IJisxc0u6yjAgRgmg&s',
                    'Software Development',
                    'We create robust and scalable software solutions to meet your business needs.'
                ),
                _buildServiceCard(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQa4bC_MEVi1WkwpMCg4QKirsVX_sEBJV_1efJez0OiYJqhp0WSNyFWz7iylq5Xwfb1zug&usqp=CAU',
                    'Cloud Services',
                    'Our cloud services offer flexibility, scalability, and cost-effectiveness for your operations.'
                ),
                _buildServiceCard(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtMVS1rCKm9GIyCGeKJhm1wnPysVghQYSzDusN7OmEQ0CKTjRuoKhRMRcwqb9EOSSj4u4&usqp=CAU',
                    'Digital Marketing',
                    'We provide innovative digital marketing strategies to enhance your online presence.'
                ),
                _buildServiceCard(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTAIzgcU9WR3STiLBgQNFpZ_UFDaB8t3kXZhHysC7hkb05HNKdVc96QM8ljXwq7pWOeB6I&usqp=CAU',
                    'E-Commerce Solutions',
                    'Our e-commerce solutions help you build a successful online store with seamless user experience.'
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildServiceCard(String imageUrl, String title, String description) {
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
