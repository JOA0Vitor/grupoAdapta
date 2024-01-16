import 'package:flutter/material.dart';

class parte3 extends StatefulWidget {
  const parte3({super.key});

  @override
  State<parte3> createState() => _parte3State();
}

class _parte3State extends State<parte3> {
  final bgColor = Color(0xFF220E3A);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 160, vertical: 50),
          child: Text(
            'Blog',
            style: TextStyle(fontSize: 55),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: _buildColumnItems(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              '../assets/menu-1.png',
              fit: BoxFit.cover,
            ),
            Image.asset(
              '../assets/menu-2.png',
              fit: BoxFit.cover,
            ),
            Image.asset(
              '../assets/menu-3.png',
              fit: BoxFit.cover,
            ),
          ],
        ),
        Image.asset(
          '../assets/bg.png',
          width: double.infinity,
          fit: BoxFit.cover,
        ),
      ],
    );
  }

  List<Widget> _buildColumnItems() {
    List<Map<String, String>> columnData = [
      {
        'imagePath': '../assets/test.png',
        'date': 'consultoria / jul 21, 2022',
        'text': 'lorem ipsum'
      },
      {
        'imagePath': '../assets/test.png',
        'date': 'consultoria / jul 21, 2022',
        'text': 'lorem ipsum'
      },
      {
        'imagePath': '../assets/test.png',
        'date': 'consultoria / jul 21, 2022',
        'text': 'lorem ipsum'
      },
    ];

    return columnData.map((item) => _buildColumnItem(item)).toList();
  }

  Widget _buildColumnItem(Map<String, String> item) {
    return Column(
      children: [
        Container(
          width: 300,
          height: 250,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: bgColor,
                width: 20,
              ),
            ),
          ),
          child: Stack(
            children: [
              Image.asset(
                item['imagePath']!,
                width: double.infinity,
                height: double.tryParse('source'),
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          item['date']!,
          style: TextStyle(
              fontSize: 15), // Ajuste o tamanho da fonte conforme necessário
        ),
        Text(
          item['text']!,
          style: TextStyle(fontSize: 25),
        ),
      ],
    );
  }
}
