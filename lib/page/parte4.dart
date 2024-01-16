import 'package:flutter/material.dart';

class parte4 extends StatefulWidget {
  const parte4({Key? key}) : super(key: key);

  @override
  State<parte4> createState() => _parte4State();
}

class _parte4State extends State<parte4> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildNewsletterSection(),
        _buildInfoSection(),
        _buildSeparatorImage(),
        _buildFooterSection(),
      ],
    );
  }

  Widget _buildNewsletterSection() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Newsletter'),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Color(0xFF7D37D2)),
                shape: MaterialStateProperty.all<OutlinedBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
              onPressed: () {},
              child: Text('Enviar'),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoSection() {
    return Container(
      width: double.infinity,
      color: Color(0xFF3B146B),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              '../assets/logo.png',
              height: 80,
            ),
            Column(
              children: [
                Text(
                  'onde estamos?',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  'Lorem ipsum dolor sit amer, 500, Santo André | SP',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  'Quer dizer oi?',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  'contato@saudetodes.com.br',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  'Encontre-nos nas redes sociais',
                  style: TextStyle(fontSize: 18),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('../assets/instagram.png'),
                    Image.asset('../assets/facebook.png'),
                    Image.asset('../assets/linkedin.png'),
                    Image.asset('../assets/linkedin.png'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSeparatorImage() {
    return Image.asset(
      '../assets/bg-white.png',
      height: 3,
    );
  }

  Widget _buildFooterSection() {
    return Container(
      width: double.infinity,
      color: Color(0xFF3B146B),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text('2022 TODOS OS DIREITOS RESERVADOS.',
  style: TextStyle(fontSize: 18),),
          Text('CONVERGÊNCIA',
  style: TextStyle(fontSize: 18),),
        ],
      ),
    );
  }
}
