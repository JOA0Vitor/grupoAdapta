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
    height: 300,
    padding: const EdgeInsets.all(20.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          'Newsletter',
          style: TextStyle(color: Color(0xFF260E43), fontSize: 40),
        ),
        SizedBox(
          width: 10,
        ), // Adiciona um espaço entre o texto e o TextFormField
        Container(
          width: 500, // Adjust the width as per your requirement
          child: Stack(
            alignment: Alignment.centerLeft,
            children: [
              Image.asset(
                '../assets/email.png', // Substitua pelo caminho da sua imagem
                height: 24,
                width: 24,
              ),
              Positioned(
                left: 35, // Ajusta o posicionamento horizontal do texto
                // Ajusta o posicionamento vertical do texto
                child: Text(
                  ' seu e-mail',
                  style: TextStyle(color: Color(0xFF260E43)),
                ),
              ),
              TextFormField(
                controller: _newsletterController,
                decoration: InputDecoration(
                  // Remova o labelText, pois ele será coberto pela imagem
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF260E43)),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF260E43)),
                  ),
                ),
              ),
            ],
          ),
        ),
        ElevatedButton(
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
              '../assets/logos/logo_footer.png',
              height: 80,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'onde estamos?',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                Text(
                  'Lorem ipsum dolor sit amer, 500, Santo André | SP',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Quer dizer oi?',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                Text(
                  'contato@saudetodes.com.br',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Encontre-nos nas redes sociais',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('../assets/redes_sociais/instagram.png'),
                    Image.asset('../assets/redes_sociais/facebook.png'),
                    Image.asset('../assets/redes_sociais/linkedin.png'),
                    Image.asset('../assets/redes_sociais/linkedin.png'),
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
            '© 2022 TODOS OS DIREITOS RESERVADOS.',
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
