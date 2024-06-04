import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeaderMenu extends StatefulWidget {
  const HeaderMenu({super.key});

  @override
  State<HeaderMenu> createState() => _HeaderMenuState();
}

class _HeaderMenuState extends State<HeaderMenu> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Navigate',
            style: TextStyle(
              color: Colors.grey[400],
              fontSize: 12,
              letterSpacing: 2,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 24),
          _buildSectionButton('All sections'),
          SizedBox(height: 12),
          _buildLinkButton('Home',
              'https://cdn.builder.io/api/v1/image/assets/TEMP/c10da8aa5bed2a4c638e98380e4b9baab056fa23a1bbf2534b7c1fc693b55b55?apiKey=a52dcc0e312848f293ce4f867a6b50f2&'),
          SizedBox(height: 12),
          _buildSectionButton('Sports Bar'),
          SizedBox(height: 12),
          _buildSectionButton('Eat & Drink'),
          SizedBox(height: 12),
          _buildSectionButton('Bowling'),
          SizedBox(height: 12),
          _buildSectionButton('Activities'),
          SizedBox(height: 12),
          _buildSectionButton('Your Event'),
          SizedBox(height: 12),
          _buildSectionButton('About us'),
          SizedBox(height: 24),
          Center(
            child: Image.network(
              'https://cdn.builder.io/api/v1/image/assets/TEMP/2893126c0c713bf5882648e38e89029542c009ed1e095e24e6beea94ea86a604?apiKey=a52dcc0e312848f293ce4f867a6b50f2&',
              width: 49,
              height: 49 / 4.17,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionButton(String title) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0),
      decoration: BoxDecoration(
        color: Colors.grey[800],
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildLinkButton(String title, String imageUrl) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0),
      decoration: BoxDecoration(
        color: Colors.blue[600]?.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.blue[300],
              fontWeight: FontWeight.bold,
            ),
          ),
          Image.network(
            imageUrl,
            width: 24,
            height: 24,
          ),
        ],
      ),
    );
  }
}
