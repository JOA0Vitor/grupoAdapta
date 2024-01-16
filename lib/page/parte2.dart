import 'package:flutter/material.dart';

class parte2 extends StatefulWidget {
  const parte2({Key? key}) : super(key: key);

  @override
  _parte2State createState() => _parte2State();
}

class _parte2State extends State<parte2> {
  final bgColor = Color(0xFF2B1446);
  final TextStyle headingStyle = TextStyle(fontSize: 55);
  final TextStyle subTitleStyle = TextStyle(fontSize: 25);
  final TextStyle bodyTextStyle = TextStyle(fontSize: 13);
  final Color buttonColor = Color(0xFF7D37D2);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Image.asset(
              '../assets/bg.png',
              height: 15,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            _buildClinicSection(),
            const SizedBox(height: 80),
            _buildArrowButtons(),
            _buildHelpSection(),
          ],
        ),
        Positioned(
          bottom: -20,
          right: 70,
          child: Image.asset('../assets/logo_lateral/orgulho.png'),
        ),
        Positioned(
          bottom: 50,
          right: 130,
          child: Image.asset('../assets/logo_lateral/bg-orgulho.png'),
        ),
      ],
    );
  }

  Widget _buildClinicSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 160, vertical: 50),
          child: Text('Clínica',
              style: headingStyle, selectionColor: Colors.amberAccent),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildServiceContainer(
              'Ginecologia Endócrina',
              'lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna alique',
            ),
            _buildImageServiceContainer('../assets/cards/test.png', 'Sexualidade'),
            _buildImageServiceContainer(
                '../assets/cards/test.png', 'Ginecologia Geral'),
          ],
        ),
      ],
    );
  }

  Widget _buildServiceContainer(String title, String description) {
    return Container(
      width: 300,
      height: 300,
      decoration: BoxDecoration(
        border: Border.all(color: bgColor, width: 20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(title,
                style: TextStyle(color: Colors.black, fontSize: 23),
                textAlign: TextAlign.center),
            SizedBox(height: 8),
            Text(description,
                style: bodyTextStyle, textAlign: TextAlign.center),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(buttonColor),
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                onPressed: () {},
                child: Text('Saiba Mais'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImageServiceContainer(String imagePath, String title) {
    return Container(
      width: 300,
      height: 300,
      decoration: BoxDecoration(
        border: Border.all(color: bgColor, width: 20),
      ),
      child: Stack(
        children: [
          Image.asset(
            imagePath,
            width: double.infinity,
            height: double.tryParse('source'),
            fit: BoxFit.cover,
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  SizedBox(height: 16), // Ajuste o valor conforme necessário
                  Text(title,
                      style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 23),
                      textAlign: TextAlign.center),
                  SizedBox(height: 8),
                  Container(
                    width: 200,
                    child: Text(
                      'lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna alique',
                      style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 13),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(buttonColor),
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: Text('Saiba Mais',
                          style: TextStyle(color: Color(0xFFFFFFFF))),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildArrowButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Color(0xB33B064E),
          child: Image.asset(
            '../assets/arrow-left.png',
            height: 40,
          ),
        ),
        CircleAvatar(
          radius: 30,
          backgroundColor:
              Color(0x00000000), // Definindo o fundo como transparente
          foregroundColor: Color.fromARGB(255, 59, 6, 78), // Definindo a cor da borda
          child: Image.asset(
            '../assets/arrow-right.png',
            height: 40,
          ),
        )
      ],
    );
  }

  Widget _buildHelpSection() {
    return Stack(
      children: [
        const SizedBox(height: 40),
        Image.asset(
          '../assets/bg-clinica2.png',
          width: double.infinity,
          height: double.tryParse(''),
          fit: BoxFit.cover,
        ),
        Positioned.fill(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Text('Precisa de ajuda?',
                  style: TextStyle(color: Color(0xFF000000), fontSize: 90)),
              Text('FAÇA UM AGENDAMENTO',
                  style: TextStyle(color: Color(0xFF000000), fontSize: 50)),
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.transparent),
                    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                        EdgeInsets.all(40)),
                    shape: MaterialStateProperty.all<OutlinedBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                        side: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Text('WhatsApp Atendimento',
                      style: TextStyle(color: Color(0xFFFFFFFF))),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
