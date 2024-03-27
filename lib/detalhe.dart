import 'package:flutter/material.dart';

void main() {
  runApp(Detalhe());
}

class Detalhe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFFff6f13), Color(0xFFffe81b)],
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                'https://raw.githubusercontent.com/felipexrn/DDM/main/imagens/logoqajuda.png'),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Alfabetização',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'poppins',
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.4,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://raw.githubusercontent.com/felipexrn/DDM/main/imagens/alfabetizacao.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 20), // Espaço entre a imagem e o texto
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dia:  02/08/2024 Segunda',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        'Hora: 15:45',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        'Local: Centro Comunitário Alvares Torres',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        'Endereço: Rua Josefina Albuquerque, 405, Carreiras',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        'Cidade: Natal',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20), // Espaço entre texto e botão
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      // Ação do botão
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF0d0FFF),
                    ),
                    child: Text(
                      'Mais Informações',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                    height: 20), // Espaço entre botão e borda inferior da tela
              ],
            ),
          ),
        ),
      ),
    );
  }
}
