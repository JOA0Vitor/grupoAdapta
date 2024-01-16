import 'package:flutter/material.dart';

class parte2 extends StatefulWidget {
  const parte2({Key? key}) : super(key: key);

  @override
  _parte2State createState() => _parte2State();
}

class _parte2State extends State<parte2> {
  final bgColor = Color(0xFF220E3A);
  final TextStyle headingStyle = TextStyle(fontSize: 55);
  final TextStyle subTitleStyle = TextStyle(fontSize: 25);
  final TextStyle bodyTextStyle = TextStyle(fontSize: 13);
  final Color buttonColor = Color(0xFF7D37D2);

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }

  Widget _buildClinicSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 160, vertical: 50),
          child: Text('Clínica', style: headingStyle , selectionColor: Colors.amberAccent,),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildServiceContainer(
              'Ginecologia Endócrina',
              'lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna alique',
            ),
            _buildImageServiceContainer('../assets/test.png', 'Sexualidade'),
            _buildImageServiceContainer('../assets/test.png', 'Ginecologia Geral'),
          ],
        ),
        _buildArrowButtons(),
        _buildHelpSection(),
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
            Spacer(),
            Text(title, style: TextStyle(color: Colors.black, fontSize: 23)),
            Spacer(),
            Text(description, style: bodyTextStyle),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(buttonColor),
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
            child: Column(
              children: [
                Spacer(),
                Text(title, style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 23)),
                Spacer(),
                Text(
                  'lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna alique',
                  style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 13),
                ),
                Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(buttonColor),
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Text('Saiba Mais', style: TextStyle(color: Color(0xFFFFFFFF))),
                  ),
                ),
              ],
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
          backgroundColor: Color.fromARGB(89, 70, 16, 89),
          child: Image.asset(
            '../assets/arrow-left.png',
            height: 40,
          ),
        ),
        CircleAvatar(
          radius: 30,
          backgroundColor: Color(0x6340184A),
          child: Image.asset(
            '../assets/arrow-right.png',
            height: 40,
          ),
        ),
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
          height: double.tryParse('source'),
          fit: BoxFit.cover,
        ),
        Positioned.fill(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Text('Precisa de ajuda?', style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 90)),
              Text('FAÇA UM AGENDAMENTO', style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 50)),
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<OutlinedBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Text('WhatsApp Atendimento'),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
