import 'package:flutter/material.dart';
import 'detalhe.dart';

class Busca extends StatelessWidget {
  // Degradê linear
  static const LinearGradient myGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color(0xFF1a02e4), Color(0xFF0057cb)],
    stops: [0.0, 0.7],
  );

  // Lista de URLs de imagens distintas
  static const List<String> imageUrls = [
    'imagens/alfabetizacao.jpg',
    'imagens/animais.jpg',
    'imagens/limpeza-praia2.jpg',
    'imagens/plantacao.jpg',
    'imagens/roupa.jpg',
    'imagens/ledor.jpg',
  ];

  // Lista de legendas de imagens distintas
  static const List<String> legendasImagens = [
    'Alfabetização',
    'Adoção',
    'Limpeza de praia',
    'Reflorestamento',
    'Bazar',
    'Ledor',
  ];

  //@override
  Widget build(BuildContext context) {
    return Scaffold(
      // Container para aplicar o degradê linear como fundo
      body: Container(
        decoration: BoxDecoration(
          gradient: myGradient,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 20, // Espaço entre a parte superior da tela e a imagem
              ),
              SizedBox(
                height: 150,
                child: Image.asset(
                  'imagens/logoqajuda.png',
                ),
              ),
              SizedBox(
                height: 50, // Espaço entre a imagem e a caixa de busca
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Digite sua busca...',
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
              SizedBox(
                height: 30, // Espaço entre a caixa de busca e o grid
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: GridView.count(
                    crossAxisCount: 2,
                    children: List.generate(6, (index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            //Navigator.push(
                            //context,
                            MaterialPageRoute(builder: (context) => Detalhe()),
                          );
                        },
                        child: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                height: 100,
                                child: Image.asset(
                                  // Usando index % imageUrls.length para garantir que o índice permaneça dentro dos limites da lista
                                  imageUrls[index % imageUrls.length],
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(height: 5),
                              Container(
                                child: Text(
                                  legendasImagens[
                                      index % legendasImagens.length],
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
