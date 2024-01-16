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
                  Row(
                    children: [
                      //colocar uma variavel para as cor

                      Row(
                        children: [
                          Image.asset(
                            '../assets/Inicio.png',
                            height: 5,
                          ),
                          Text(' Inicio   ',
                              style: TextStyle(
                                  color: Color(0xFFFFFFFF), fontSize: 21)),
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset(
                            '../assets/conheca_a_gente.png',
                            height: 5,
                          ),
                          Text(' Conheça a gente   ',
                              style: TextStyle(
                                  color: Color(0xFFFFFFFF), fontSize: 21)),
                        ],
                      ), //vai ter uma option
                      Row(
                        children: [
                          Image.asset(
                            '../assets/clinica.png',
                            height: 5,
                          ),
                          Text(' Clínica   ',
                              style: TextStyle(
                                  color: Color(0xFFFFFFFF), fontSize: 21)),
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset(
                            '../assets/educacao.png',
                            height: 5,
                          ),
                          Text(' Educação   ',
                              style: TextStyle(
                                  color: Color(0xFFFFFFFF), fontSize: 21)),
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset(
                            '../assets/blog.png',
                            height: 5,
                          ),
                          Text(' Blog   ',
                              style: TextStyle(
                                  color: Color(0xFFFFFFFF), fontSize: 21)),
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset(
                            '../assets/contato.png',
                            height: 5,
                          ),
                          Text(' Contato   ',
                              style: TextStyle(
                                  color: Color(0xFFFFFFFF), fontSize: 21)),
                        ],
                      ),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            //olha isso
                            '../assets/menu-1.png',
                            fit: BoxFit.cover,
                          ),
                          Image.asset(
                            //olha isso
                            '../assets/menu-2.png',
                            fit: BoxFit.cover,
                          ),
                          Image.asset(
                            //olha isso
                            '../assets/menu-3.png',
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            Image.asset(
              //olha isso
              '../assets/bg.png',
              height: 15,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 160, vertical: 50),
                  child: Text('Clínica', style: TextStyle(fontSize: 55)),
                ), //colocar full esquerda
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      radius: 30, // Ajuste o raio conforme necessário
                      backgroundColor: Color.fromARGB(
                          89, 70, 16, 89), // Cor de fundo do círculo
                      child: Image.asset(
                        '../assets/arrow-left.png',
                        height: 40, // Ajuste a altura conforme necessário
                      ),
                    ),
                    CircleAvatar(
                      radius: 30, // Ajuste o raio conforme necessário
                      backgroundColor:
                          Color(0x6340184A), // Cor de fundo do círculo
                      child: Image.asset(
                        '../assets/arrow-right.png',
                        height: 40, // Ajuste a altura conforme necessário
                      ),
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
                        bottom: -20,
                        right: 70,
                        child: Image.asset('../assets/orgulho.png')),
                    Positioned(
                        bottom: 50,
                        right: 130,
                        child: Image.asset('../assets/bg-orgulho.png')),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 160, vertical: 50),
                      child: Text(
                        'Blog',
                        style: TextStyle(fontSize: 55),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          //1
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 300,
                              height: 250,
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: borderColor, // Cor da borda
                                    width: 20, // Largura da borda
                                  ),
                                ),
                              ),
                              child: Stack(
                                children: [
                                  Image.asset(
                                    '../assets/test.png', // Substitua pela URL real da sua imagem
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
                              'consultoria / jul 21, 2022',
                            ),
                            Text(
                              'lorem ipsum',
                              style: TextStyle(fontSize: 25),
                            ),
                          ],
                        ),
                        Column(
                          //1
                          children: [
                            Container(
                              width: 300,
                              height: 250,
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: borderColor, // Cor da borda
                                    width: 20, // Largura da borda
                                  ),
                                ),
                              ),
                              child: Stack(
                                children: [
                                  Image.asset(
                                    '../assets/test.png', // Substitua pela URL real da sua imagem
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
                              'consultoria / jul 21, 2022',
                            ),
                            Text(
                              'lorem ipsum',
                              style: TextStyle(fontSize: 25),
                            ),
                          ],
                        ),
                        Column(
                          //1

                          children: [
                            Container(
                              width: 300,
                              height: 250,
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: borderColor, // Cor da borda
                                    width: 20, // Largura da borda
                                  ),
                                ),
                              ),
                              child: Stack(
                                children: [
                                  Image.asset(
                                    '../assets/test.png', // Substitua pela URL real da sua imagem
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
                              'consultoria / jul 21, 2022',
                            ),
                            Text(
                              'lorem ipsum',
                              style: TextStyle(fontSize: 25),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          //olha isso
                          '../assets/menu-1.png',
                          fit: BoxFit.cover,
                        ),
                        Image.asset(
                          //olha isso
                          '../assets/menu-2.png',
                          fit: BoxFit.cover,
                        ),
                        Image.asset(
                          //olha isso
                          '../assets/menu-3.png',
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                    Image.asset(
                      //olha isso
                      '../assets/bg.png',
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),

                    //ate aqui
                    Column(
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Newsletter'),

                              //colocar o email

                              Padding(
                                padding: const EdgeInsets.all(50.0),
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(Color(
                                            0xFF7D37D2)), // Substitua pela cor desejada
                                    shape: MaterialStateProperty.all<
                                        OutlinedBorder>(RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50),
                                    )),
                                  ),
                                  onPressed: () {},
                                  child: Text('Enviar'),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0xFF3B146B),
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  '../assets/logo.png',
                                  height: 80,
                                ),
                                Container(
                                  width: 200,
                                  child: const Column(
                                    children: [
                                      Text('onde estamos?'),
                                      Text(
                                          'Lorem ipsum dolor sit amer, 500, Santo André | SP'),
                                    ],
                                  ),
                                ),
                                Column(
                                  children: [
                                    Text('Quer dizer oi?'),
                                    Text('contato@saudetodes.com.br'),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text('Encontre-nos nas redes sociais'),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image.asset(
                                          '../assets/instagram.png',
                                        ),
                                        Image.asset(
                                          '../assets/facebook.png',
                                        ),
                                        Image.asset(
                                          '../assets/linkedin.png',
                                        ),
                                        Image.asset(
                                          '../assets/linkedin.png',
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Image.asset(
                          '../assets/bg-white.png',
                          height: 3,
                        ),
                        Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Color(0xFF3B146B),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text('2022 TODOS OS DIREITOS RESERVADOS.'),
                                Text('CONVERGÊNCIA'),
                              ],
                            )),
                      ],
                    )
                  ],
                ) //remover
              ],
            )
          ],
        ),
      ),
    );
  }
}
