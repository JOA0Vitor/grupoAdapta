import 'package:flutter/material.dart';

// ignore: camel_case_types
class web extends StatefulWidget {
  const web({super.key});

  @override
  State<web> createState() => _webState();
}

class _webState extends State<web> {
  final Color borderColor = Color(0xFF220E3A);
  final Color buttonColor = Color(0xFF7D37D2);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 150,
              decoration: const BoxDecoration(
                color: Color(0xFF220E3A),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(
                    '../assets/logo.png',
                    height: 80,
                  ),
                  // Text('saude de todos',style: TextStyle(color:Color(0xFFFFFFFF) ),), //aqui é uma imagem
                  const Row(
                    children: [
                      //colocar uma variavel para as cor
                      Text('- Inicio ',
                          style: TextStyle(color: Color(0xFFFFFFFF))),
                      Text('- conheça a gente ',
                          style: TextStyle(
                              color: Color(0xFFFFFFFF))), //vai ter uma option
                      Text('- clínica ',
                          style: TextStyle(color: Color(0xFFFFFFFF))),
                      Text('- Educação ',
                          style: TextStyle(color: Color(0xFFFFFFFF))),
                      Text('- Blog ',
                          style: TextStyle(color: Color(0xFFFFFFFF))),
                      Text('- Contato ',
                          style: TextStyle(color: Color(0xFFFFFFFF))),
                    ],
                  ),
                ],
              ),
            ),
            Stack(
              children: [
                const SizedBox(
                  height: 40,
                ),
                Image.asset(
                  //olha isso
                  '../assets/home.png', // Substitua pela URL real da sua imagem
                  width: double.infinity,
                  height: double.tryParse('source'),
                  fit: BoxFit.cover,
                ),
                Positioned.fill(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      const Text('Diversidade',
                          style: TextStyle(
                              color: Color(0xFFFFFFFF), fontSize: 200)),
                      Text('em todos locais',
                          style: TextStyle(
                              color: Color(0xFFFFFFFF), fontSize: 100)),
                      Text('consultoria. palestras. cursos',
                          style: TextStyle(
                              color: Color(0xFFFFFFFF), fontSize: 30)),
                      Padding(
                        padding: const EdgeInsets.all(50.0),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color(
                                    0xFF7D37D2)), // Substitua pela cor desejada
                            shape: MaterialStateProperty.all<OutlinedBorder>(
                                RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            )),
                          ),
                          onPressed: () {},
                          child: Text('Saiba Mais'),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Column(
              children: [
                Text('Clínica',
                    style: TextStyle(fontSize: 55)), //colocar full esquerda
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: borderColor,
                            width: 20), // Adiciona uma borda preta de 2 pixels
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Spacer(),
                            Text(
                              'Ginecologia Endócrina',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 23),
                            ),
                            Spacer(),
                            Text(
                              'lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna alique',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(50.0),
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(Color(
                                          0xFF7D37D2)), // Substitua pela cor desejada
                                  shape:
                                      MaterialStateProperty.all<OutlinedBorder>(
                                          RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  )),
                                ),
                                onPressed: () {},
                                child: Text('Saiba Mais'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: borderColor,
                            width: 20), // Adiciona uma borda preta de 2 pixels
                      ),
                      child: Stack(
                        children: [
                          Image.asset(
                            //olha isso
                            '../assets/test.png', // Substitua pela URL real da sua imagem
                            width: double.infinity,
                            height: double.tryParse('source'),
                            fit: BoxFit.cover,
                          ),
                          Positioned.fill(
                            child: Column(
                              children: [
                                Spacer(),
                                Text(
                                  'Sexualidade ',
                                  style: TextStyle(
                                      color: Color(0xFFFFFFFF), fontSize: 23),
                                ),
                                Spacer(),
                                Text(
                                  'lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna alique',
                                  style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    fontSize: 13,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(50.0),
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty
                                          .all<Color>(Color(
                                              0xFF7D37D2)), // Substitua pela cor desejada
                                      shape: MaterialStateProperty.all<
                                              OutlinedBorder>(
                                          RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50),
                                      )),
                                    ),
                                    onPressed: () {},
                                    child: Text(
                                      'Saiba Mais',
                                      style: TextStyle(
                                        color: Color(0xFFFFFFFF),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: borderColor,
                            width: 20), // Adiciona uma borda preta de 2 pixels
                      ),
                      child: Stack(
                        children: [
                          Image.asset(
                            //olha isso
                            '../assets/test.png', // Substitua pela URL real da sua imagem
                            width: double.infinity,
                            height: double.tryParse('source'),
                            fit: BoxFit.cover,
                          ),
                          Positioned.fill(
                            child: Column(
                              children: [
                                Spacer(),
                                Text(
                                  'Ginecologia Geral ',
                                  style: TextStyle(
                                      color: Color(0xFFFFFFFF), fontSize: 23),
                                ),
                                Spacer(),
                                Text(
                                  'lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna alique',
                                  style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    fontSize: 13,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(50.0),
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty
                                          .all<Color>(Color(
                                              0xFF7D37D2)), // Substitua pela cor desejada
                                      shape: MaterialStateProperty.all<
                                              OutlinedBorder>(
                                          RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50),
                                      )),
                                    ),
                                    onPressed: () {},
                                    child: Text(
                                      'Saiba Mais',
                                      style: TextStyle(
                                        color: Color(0xFFFFFFFF),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      '../assets/arrow-left.png',
                    ),
                    Image.asset(
                      '../assets/arrow-right.png',
                    ),
                  ],
                ),
                Stack(
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    Image.asset(
                      //olha isso
                      '../assets/bg-clinica.png', // Substitua pela URL real da sua imagem
                      width: double.infinity,
                      height: double.tryParse('source'),
                      fit: BoxFit.cover,
                    ),
                    Positioned.fill(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          const Text('Precisa de ajuda?',
                              style: TextStyle(
                                  color: Color(0xFFFFFFFF), fontSize: 90)),
                          Text('FAÇA UM AGENDAMENTO',
                              style: TextStyle(
                                  color: Color(0xFFFFFFFF), fontSize: 50)),
                          Padding(
                            padding: const EdgeInsets.all(50.0),
                            child: ElevatedButton(
                              style: ButtonStyle(
                                shape:
                                    MaterialStateProperty.all<OutlinedBorder>(
                                        RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                )),
                              ),
                              onPressed: () {},
                              child: Text('WhatsApp Atendimento'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 50, 
                      right: 130, 
                      child: Image.asset('../assets/bg-orgulho.png')
                    ),
                  ],
                ),
                Container(
                  height: 100,
                 child: Text('Blog', style: TextStyle(fontSize: 55),),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
