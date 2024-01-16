import 'package:flutter/material.dart';

class parte4 extends StatefulWidget {
  const parte4({Key? key}) : super(key: key);

  @override
  State<parte4> createState() => _parte4State();
}

class _parte4State extends State<parte4> {
  TextEditingController _newsletterController = TextEditingController();

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
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Newsletter',
            style: TextStyle(color: Color(0xFF260E43), fontSize: 40),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  TextFormField(
                    controller: _newsletterController,
                    decoration: InputDecoration(
                      labelText: 'Digite seu e-mail',
                      labelStyle: TextStyle(color: Color(0xFF260E43)),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF260E43)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF260E43)),
                      ),
                    ),
                  ),
                  Image.asset(
                    '../assets/email.png', // Substitua pelo caminho da sua imagem
                    height: 24,
                    width: 24,
                  ),
                ],
              ),
            ),
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF7D37D2)),
              shape: MaterialStateProperty.all<OutlinedBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
            onPressed: () {},
            child: Text(
              'Enviar',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoSection() {
    return Container(
      height: 300,
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'onde estamos?',
                ),
                Text(
                  'Lorem ipsum dolor sit amer, 500, Santo André | SP',
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Quer dizer oi?',
                ),
                Text(
                  'contato@saudetodes.com.br',
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Encontre-nos nas redes sociais',
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
      height: 80,
      color: Color(0xFF3B146B),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '2022 TODOS OS DIREITOS RESERVADOS.',
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
          Text(
            'CONVERGÊNCIA',
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
