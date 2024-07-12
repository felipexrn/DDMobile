import 'package:flutter/material.dart';
import 'info.dart';
import 'detalheEdicao.dart';

class Detalhe extends StatefulWidget {
  @override
  DetalheEstado createState() => DetalheEstado();
}

class DetalheEstado extends State<Detalhe> {
  String acao = "Alfabetização";
  String dia = "02/08/2024 Segunda";
  String hora = "15:45";
  String local = "Centro Comunitário Alvares Torres";
  String endereco = "Rua Josefina Albuquerque, 405, Carreiras";
  String cidade = "Natal";

  void atualizaEstado(String novoAcao, String novoDia, String novoHora,
      String novoLocal, String novoEndereco, String novaCidade) {
    setState(() {
      acao = novoAcao;
      dia = novoDia;
      hora = novoHora;
      local = novoLocal;
      endereco = novoEndereco;
      cidade = novaCidade;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhes da Ação'),
        backgroundColor: Color(0xFFff6f13),
      ),
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
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                'https://raw.githubusercontent.com/felipexrn/DDM/main/imagens/logoqajuda.png'),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      acao,
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
                      'Dia: $dia',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'Hora: $hora',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'Local: $local',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'Endereço: $endereco',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'Cidade: $cidade',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20), // Espaço entre texto e botões
              Center(
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Info(titulo: acao),
                          ),
                        );
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
                    SizedBox(height: 10), // Espaço entre os botões
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetalheEdicao(
                              acao: acao,
                              dia: dia,
                              hora: hora,
                              local: local,
                              endereco: endereco,
                              cidade: cidade,
                              onSave: atualizaEstado,
                            ),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF0d0FFF),
                      ),
                      child: Text(
                        'Editar Detalhes',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                  height: 20), // Espaço entre botões e borda inferior da tela
            ],
          ),
        ),
      ),
    );
  }
}
