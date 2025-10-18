import 'dart:io';
import 'package:flutter/material.dart';
import 'package:maps_imagens/providers/great_places.dart';
import 'package:maps_imagens/widgets/image_input.dart';
import 'package:provider/provider.dart';

class PlaceFormScreen extends StatefulWidget {
  const PlaceFormScreen({Key? key}) : super(key: key);

  @override
  State<PlaceFormScreen> createState() => _PlaceFormScreenState();
}

class _PlaceFormScreenState extends State<PlaceFormScreen> {
  final _titleController = TextEditingController();
  File? pickedImage;

  void _selectImage(File pickedImage) {
    pickedImage = pickedImage;
  }

  void _submitForm() {
    if (_titleController.text.isEmpty || pickedImage == null) {
      return;
    }

    Provider.of<GreatPlaces>(
      context,
      listen: false,
    ).addPlace(_titleController.text, pickedImage!);

    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    // Scaffold é a estrutura base da tela (com appBar, body, etc.).
    return Scaffold(
      appBar: AppBar(title: const Text('Nova Viagem')),
      body: Column(
        // Faz com que os filhos da coluna (como o botão) se estiquem para preencher a largura da tela.
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          // Expanded faz com que a área do formulário ocupe todo o espaço vertical disponível, empurrando o botão para baixo.
          Expanded(
            // SingleChildScrollView permite que o conteúdo do formulário seja rolável, caso não caiba na tela.
            child: SingleChildScrollView(
              child: Padding(
                // Adiciona um espaçamento interno de 10 pixels em todos os lados do formulário.
                padding: const EdgeInsets.all(10),
                // Coluna que organiza os campos do formulário verticalmente.
                child: Column(
                  children: <Widget>[
                    // Campo de texto para o título.
                    TextField(
                      controller:
                          _titleController, // Associa o controlador ao campo de texto.
                      decoration: const InputDecoration(labelText: 'Titulo'),
                    ),
                    const SizedBox(height: 10), // Um espaçamento vertical.
                    ImageInput(_selectImage), // Widget para capturar a imagem.
                    const SizedBox(height: 10), // Um espaçamento vertical.
                    // Aqui entraria o widget para selecionar a localização no mapa.
                    // LocationInput(this._selectPosition),
                  ],
                ),
              ),
            ),
          ),
          // Botão principal para adicionar/submeter o formulário.
          ElevatedButton.icon(
            icon: const Icon(Icons.add),
            label: const Text('Adicionar'),
            style: ElevatedButton.styleFrom(
              // Define as cores e aparência do botão.
              foregroundColor: Colors.black, // Cor do ícone e do texto.
              backgroundColor: Theme.of(
                context,
              ).colorScheme.secondary, // Cor de fundo do botão.
              elevation: 0, // Remove a sombra do botão.
              tapTargetSize: MaterialTapTargetSize
                  .shrinkWrap, // Reduz a área de toque para o tamanho do botão.
            ),
            onPressed:
                _submitForm, // Define a função a ser chamada quando o botão for pressionado.
          ),
        ],
      ),
    );
  }
}
