// gerenciar imagem

import 'package:flutter/material.dart';

class ImageInput extends StatefulWidget {
  const ImageInput({Key? key}) : super(key: key);

  @override
  State<ImageInput> createState() => _ImageInputState();
}

class _ImageInputState extends State<ImageInput> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Container para mostrar o preview da imagem
        Container(
          width: 180,
          height: 100,
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.grey),
          ),
          alignment: Alignment.center,
          child: const Text('Nenhuma Imagem'),
        ),
        // Espaçamento entre o preview e o botão
        const SizedBox(width: 10),
        // Expanded para que o botão ocupe o espaço restante
        Expanded(
          child: TextButton.icon(
            icon: const Icon(Icons.camera),
            label: const Text('Tirar Foto'),
            onPressed: () {
              // Lógica para tirar a foto será adicionada aqui
            },
          ),
        ), // O parêntese extra estava aqui e foi removido.
      ],
    );
  }
}