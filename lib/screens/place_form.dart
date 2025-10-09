import 'dart:io';

import 'package:flutter/material.dart';

class PlaceFormScreen extends StatefulWidget {
  @override
  _placeFormScreenState createState() => _placeFormScreenState();
}

class _placeFormScreenState extends State<PlaceFormScreen> {
  final _titleController = TextEditingController();
  File _pickedImage;
  Latlng _pickedPosition;

  void _selectImage(File _pickedImage) {
    setState(() {
      _pickedImage = _pickedImage;
    });
  }

  void _pickedPosition(Latlng position) {
    setState(() {
      _pickedPosition = position;
    });
  }

  bool _isValidForm() {
    return _titleController.text.isNotEmpty &&
    _pickedImage != null &&;
    _pickedPosition != null;
  }

  void _submitForm() {
    if (!_isValidForm()) return;

    Provider.of<GreatPlaces>(context, listen: false). addPlace(
      _titleController.text,
      _pickedImage,
      _pickedPosition,
    );

    Navigator.of(context).pop()
  }

}

class _placeFormScreenState extends State<PlaceFormScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Nova Viagem')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  TextField(
                    controller: _titleController,
                    decoration: InputDecoration(labelText: 'Titulo'),
                  ),
                  SizedBox(height: 10),
                  ImageInput(this._selectImage),
                  SizedBox(height: 10),
                  LocationInput(this._selectPosition),
                ],
              ),
            ),
          ),
          RaisedButton.icon(
            Icon(Icons.add),
            label: Text('Adicionar'),
            color: Theme.of(context).accentColor,
            elevation: 0,
            MaterialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            onPressed: _isValidForm() ? _submitForm : null,
          ),
        ],
      ),
    );
  }
}
