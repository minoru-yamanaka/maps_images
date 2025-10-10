import 'dart:io';

import 'package:flutter/material.dart';

class PlaceFormScreen extends StatefulWidget {
  const PlaceFormScreen({Key? key}) : super(key: key);

  @override
  State<PlaceFormScreen> createState() => _placeFormScreenState();
}

class _placeFormScreenState extends State<PlaceFormScreen> {
  final _titleController = TextEditingController();

  void _submitForm() {
    //Metodo do botão
  }
  //   // File _pickedImage;
  //   // Latlng _pickedPosition;

  //   // void _selectImage(File _pickedImage) {
  //   //   setState(() {
  //   //     _pickedImage = _pickedImage;
  //   //   });
  //   }

  //   void _pickedPosition(Latlng position) {
  //     setState(() {
  //       _pickedPosition = position;
  //     });
  //   }

  //   bool _isValidForm() {
  //     return _titleController.text.isNotEmpty &&
  //     _pickedImage != null &&;
  //     _pickedPosition != null;
  //   }

  //   void _submitForm() {
  //     if (!_isValidForm()) return;

  //     Provider.of<GreatPlaces>(context, listen: false). addPlace(
  //       _titleController.text,
  //       _pickedImage,
  //       _pickedPosition,
  //     );

  //     Navigator.of(context).pop()
  //   }

  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Nova Viagem')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded( // ocupa o espaço todo da tela
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    TextField(
                      controller: _titleController,
                      decoration: InputDecoration(labelText: 'Titulo'),
                    ),

                    const SizedBox(height: 10),
                    const ImageInput(),
                    SizedBox(height: 10), // LocationInput(this._selectPosition),
                  ],
                ),
              ),
            ),
          ),
          ElevatedButton.icon(
            icon: const Icon(Icons.add),
            label:const Text('Adicionar'),
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.black, backgroundColor: Theme.of(context).colorScheme.secondary,
              elevation: 0,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            onPressed: _submitForm,
          ),
        ],
      ),
    );
  }
}
