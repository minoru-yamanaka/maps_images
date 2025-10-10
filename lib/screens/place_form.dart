import 'dart:io'; // Import necessário para usar o tipo 'File' na lógica do formulário.

import 'package:flutter/material.dart';
import 'package:maps_imagens/widgets/image_input.dart'; // Importa o widget customizado de input de imagem.

// Define a tela do formulário como um StatefulWidget, pois seu estado (dados do formulário) irá mudar.
class PlaceFormScreen extends StatefulWidget {
  const PlaceFormScreen({Key? key}) : super(key: key);

  @override
  State<PlaceFormScreen> createState() => _placeFormScreenState();
}

// Classe que gerencia o estado da tela do formulário.
class _placeFormScreenState extends State<PlaceFormScreen> {
  // Controlador para o campo de texto do título, para ler e gerenciar seu valor.
  final _titleController = TextEditingController();

  // Função que será chamada quando o botão de submissão for pressionado.
  void _submitForm() {
    // A lógica de validação e salvamento dos dados será implementada aqui.
  }

  // --- LÓGICA DO FORMULÁRIO (ATUALMENTE COMENTADA) ---
  // Variável para armazenar a imagem selecionada.
  // File? _pickedImage;
  // Variável para armazenar a posição selecionada no mapa.
  // Latlng? _pickedPosition;

  // Função para receber e armazenar a imagem vinda do widget ImageInput.
  // void _selectImage(File pickedImage) {
  //   setState(() {
  //     _pickedImage = pickedImage;
  //   });
  // }

  // Função para receber e armazenar a posição vinda do widget LocationInput.
  // void _selectPosition(Latlng position) {
  //   setState(() {
  //     _pickedPosition = position;
  //   });
  // }

  // Função para validar se todos os campos necessários do formulário foram preenchidos.
  // bool _isValidForm() {
  //   return _titleController.text.isNotEmpty && _pickedImage != null && _pickedPosition != null;
  // }

  // Função completa de submissão do formulário.
  // void _submitForm() {
  //   if (!_isValidForm()) return; // Se o formulário não for válido, interrompe a execução.

  //   // Chama o provider para adicionar o novo lugar aos dados do app.
  //   Provider.of<GreatPlaces>(context, listen: false).addPlace(
  //     _titleController.text,
  //     _pickedImage!,
  //     _pickedPosition!,
  //   );

  //   // Fecha a tela do formulário e volta para a tela anterior.
  //   Navigator.of(context).pop();
  // }

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
                    const SizedBox(height: 20), // Um espaçamento vertical.
                    const ImageInput(), // Widget para capturar a imagem.
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
