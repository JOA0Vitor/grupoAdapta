import 'package:flutter/material.dart';

class web extends StatefulWidget {
  const web({super.key});

  @override
  State<web> createState() => _webState();
}

class _webState extends State<web> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 100,
            decoration: BoxDecoration(
                color: Color(0xFF7D37D2), ),
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset('../assets/logo.png'),
                // Text('saude de todos',style: TextStyle(color:Color(0xFFFFFFFF) ),), //aqui é uma imagem
                const Row(
                  children: [//colocar uma variavel para as cor
                    Text('- Inicio ',style: TextStyle(color:Color(0xFFFFFFFF) )),
                    Text('- conheça a gente ',style: TextStyle(color:Color(0xFFFFFFFF) )), //vai ter uma option
                    Text('- clínica ',style: TextStyle(color:Color(0xFFFFFFFF) )),
                    Text('- Educação ',style: TextStyle(color:Color(0xFFFFFFFF) )),
                    Text('- Blog ',style: TextStyle(color:Color(0xFFFFFFFF) )),
                    Text('- Contato ',style: TextStyle(color:Color(0xFFFFFFFF) )),
                  ],
                ),
              ],
            ),
          ),
          Stack(
            
            children: [
               Image.asset(
              '../assets/teste.png', // Substitua pela URL real da sua imagem
              width: double.infinity,
              height:630,
              fit: BoxFit.cover,
            ),
              Positioned.fill(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const Text('diversidade',style: TextStyle(color:Color(0xFFFFFFFF),fontSize: 200 )),
                    Text('em todos locais',style: TextStyle(color:Color(0xFFFFFFFF),fontSize: 100 )),
                    Text('consultoria. palestras. cursos',style: TextStyle(color:Color(0xFFFFFFFF),fontSize: 30 )),
                    
                    
                    Padding(
                      padding: const EdgeInsets.all(50.0),
                      child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF7D37D2)), // Substitua pela cor desejada
                            shape: MaterialStateProperty.all<OutlinedBorder>(RoundedRectangleBorder(
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
          ) 
          
        ],
      ),
    );
  }
}
