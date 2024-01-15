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
                color: Color(0xFF7D37D2),
              
               ),
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset('assets/logo.png'),
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
               Image.network(
              'https://storage.alboom.ninja/sites/2356/albuns/953849/ensaio-familia-dia-dos-pais-estudio-35.jpg?t=1643547990', // Substitua pela URL real da sua imagem
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
              Text('diversidade'),
              Text('em todos locais'),
              Text('consultoria. palestras. cursos'),
              TextButton(onPressed: ()=> {}, child: Text('Saiba mais'))
            ],
          ) 
          
        ],
      ),
    );
  }
}
