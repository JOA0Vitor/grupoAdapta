import 'package:flutter/material.dart';

class parte1 extends StatefulWidget {
  const parte1({Key? key});

  @override
  _parte1State createState() => _parte1State();
}

class _parte1State extends State<parte1> {
  final bgColor = Color(0xFF220E3A);
  final TextStyle blackTextStyle = TextStyle(color: Color(0xFFFFFFFF));

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        _buildTopBar(),
        _buildStackWithImage(),
       
      ],
    );
  }

  Widget _buildTopBar() {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        color: bgColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            '../assets/logos/logo.png',
            height: 80,
          ),
          Row(
            children: [
              _buildMenuItem('Inicio', '../assets/header/Inicio.png'),
              _buildMenuItem(
                  'Conheça a gente', '../assets/header/conheca_a_gente.png'),
              _buildMenuItem('Clínica', '../assets/header/clinica.png'),
              _buildMenuItem('Educação', '../assets/header/educacao.png'),
              _buildMenuItem('Blog', '../assets/header/blog.png'),
              _buildMenuItem('Contato', '../assets/header/contato.png'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem(String title, String iconPath) {
    return Row(
      children: [
        Image.asset(
          iconPath,
          height: 5,
        ),
        Text(
          ' $title   ',
          style: blackTextStyle.copyWith(
              fontSize: 21, decoration: TextDecoration.none),
        ),
      ],
    );
  }

  Widget _buildStackWithImage() {
    return Stack(
      children: [
        const SizedBox(height: 60),
        Image.asset(
          '../assets/header/home.png',
          width: double.infinity,
          height: double.tryParse('source'),
          fit: BoxFit.cover,
        ),
        Positioned.fill(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 80,
              ),
              Text(
                'diversidade',
                style: blackTextStyle.copyWith(fontSize: 200),
              ),
              Text(
                'EM TÔDES LOCAIS',
                style: blackTextStyle.copyWith(fontSize: 100),
              ),
              Text(
                'CONSULTORIA. PALESTRAS. CURSOS',
                style: blackTextStyle.copyWith(fontSize: 30),
              ),
              const SizedBox(
                height: 40,
              ),
              _buildSaibaMaisButton(),
              const SizedBox(
                height: 40,
              ),
              _buildBottomRowWithImages(),
            ],
          ),
        )
      ],
    );
  }

  Widget _buildSaibaMaisButton() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all<Color>(Color.fromARGB(255, 43, 16, 76)),
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
          child: Text(
            'Saiba Mais',
            style: blackTextStyle.copyWith(fontSize: 18),
          ),
        ),
      ),
    );
  }

  Widget _buildBottomRowWithImages() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          '../assets/botoes_menu/menu_1.png',
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
    );
  }

  
}


