import 'package:flutter/material.dart';

class parte3 extends StatefulWidget {
  const parte3({super.key});

  @override
  State<parte3> createState() => _parte3State();
}

class _parte3State extends State<parte3> {
  final bgColor = Color.fromARGB(255, 120, 69, 134);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 76, 24, 101), // Cor de fundo desejada
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 160, vertical: 50),
            child: Text(
              'Blog',
              style: TextStyle(fontSize: 55, color: Color(0xFFFFFFFF)),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: _buildColumnItems(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               const SizedBox(
                height: 80,
              ),
              Image.asset(
                '../assets/botoes_menu/menu-1.png',
                fit: BoxFit.cover,
              ),
              Image.asset(
                '../assets/botoes_menu/menu-2.png',
                fit: BoxFit.cover,
              ),
              Image.asset(
                '../assets/botoes_menu/menu-3.png',
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
      ),
    );
  }

  List<Widget> _buildColumnItems() {
    List<Map<String, String>> columnData = [
      {
        'imagePath': '../assets/cards/test.png',
        'date': 'consultoria / jul 21, 2022',
        'text': 'lorem ipsum',
      },
      {
        'imagePath': '../assets/cards/test.png',
        

        'date': 'consultoria / jul 21, 2022',
        'text': 'lorem ipsum',
      },
      {
        'imagePath': '../assets/cards/test.png',
        'date': 'consultoria / jul 21, 2022',
        'text': 'lorem ipsum',
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
            color: Color(0xFF632573),
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
            fontSize: 15,
            color: Color(0xFFFFFFFF),
          ),
        ),
        Text(
          item['text']!,
          style: TextStyle(fontSize: 25, color: Color(0xFFFFFFFF)),
        ),
      ],
    );
  }
}
