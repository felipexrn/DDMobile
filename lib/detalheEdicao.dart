import 'package:flutter/material.dart';

class DetalheEdicao extends StatefulWidget {
  final String acao;
  final String dia;
  final String hora;
  final String local;
  final String endereco;
  final String cidade;
  final Function(String, String, String, String, String, String) onSave;

  DetalheEdicao({
    required this.acao,
    required this.dia,
    required this.hora,
    required this.local,
    required this.endereco,
    required this.cidade,
    required this.onSave,
  });

  @override
  _DetalheEdicaoState createState() => _DetalheEdicaoState();
}

class _DetalheEdicaoState extends State<DetalheEdicao> {
  late TextEditingController _acaoController;
  late TextEditingController _diaController;
  late TextEditingController _horaController;
  late TextEditingController _localController;
  late TextEditingController _enderecoController;
  late TextEditingController _cidadeController;

  @override
  void initState() {
    super.initState();
    _acaoController = TextEditingController(text: widget.acao);
    _diaController = TextEditingController(text: widget.dia);
    _horaController = TextEditingController(text: widget.hora);
    _localController = TextEditingController(text: widget.local);
    _enderecoController = TextEditingController(text: widget.endereco);
    _cidadeController = TextEditingController(text: widget.cidade);
  }

  @override
  void dispose() {
    _acaoController.dispose();
    _diaController.dispose();
    _horaController.dispose();
    _localController.dispose();
    _enderecoController.dispose();
    _cidadeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Editar Detalhes da Ação'),
        backgroundColor: Color(0xFFff6f13),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _acaoController,
              decoration: InputDecoration(labelText: 'Ação'),
            ),
            TextField(
              controller: _diaController,
              decoration: InputDecoration(labelText: 'Dia'),
            ),
            TextField(
              controller: _horaController,
              decoration: InputDecoration(labelText: 'Hora'),
            ),
            TextField(
              controller: _localController,
              decoration: InputDecoration(labelText: 'Local'),
            ),
            TextField(
              controller: _enderecoController,
              decoration: InputDecoration(labelText: 'Endereço'),
            ),
            TextField(
              controller: _cidadeController,
              decoration: InputDecoration(labelText: 'Cidade'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                widget.onSave(
                  _acaoController.text,
                  _diaController.text,
                  _horaController.text,
                  _localController.text,
                  _enderecoController.text,
                  _cidadeController.text,
                );
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF0d0FFF),
              ),
              child: Text(
                'Salvar',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
