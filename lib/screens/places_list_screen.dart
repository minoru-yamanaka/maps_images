import 'package:flutter/material.dart';
import 'package:maps_imagens/utilis/app_rotas.dart';

class PlacesListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Minhas Viagens'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(AppRotas.placeForm);
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: const Center(child: CircularProgressIndicator()),
    );
  }
}
