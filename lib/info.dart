import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('qajuda'),
        backgroundColor: Color(0xffb8b8b8),
      ),
      backgroundColor: Color(0xffb8b8b8),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, "/", (route) => false);
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    child: Image.network(
                      'https://raw.githubusercontent.com/felipexrn/DDM/main/imagens/logoqajuda.png',
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 5.0),
            Text(
              'Alfabetização',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Junte-se a nós para uma manhã emocionante de aprendizado e solidariedade na "Aprender para Iluminar", uma ação beneficente dedicada à alfabetização. Nosso objetivo é proporcionar oportunidades educacionais para crianças e adultos da comunidade que enfrentam dificuldades de leitura e escrita.\n' +
                  '\nEsta ação beneficente é organizada em parceria com voluntários locais, educadores e membros da comunidade comprometidos com a educação. Durante o evento, ofereceremos:\n' +
                  '\nAulas de Alfabetização: Professores qualificados conduzirão atividades interativas e divertidas para ajudar os participantes a desenvolver suas habilidades de leitura e escrita.\n' +
                  '\nAtividades Lúdicas: Jogos educativos e exercícios práticos tornarão o processo de aprendizado envolvente e estimulante para todas as idades.\n' +
                  '\nDistribuição de Materiais Escolares: Todos os participantes receberão materiais educacionais essenciais, como lápis, cadernos e livros, para apoiar seu aprendizado contínuo.\n' +
                  '\nLanche Saudável: Será oferecido um lanche nutritivo para garantir que todos tenham a energia necessária para participar ativamente das atividades.',
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 14.0,
              ),
            ),
            SizedBox(height: 10.0), // Espaço no final da tela
          ],
        ),
      ),
    );
  }
}
