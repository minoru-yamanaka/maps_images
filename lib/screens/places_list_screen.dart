import 'package:flutter/material.dart';
import 'package:maps_imagens/providers/great_places.dart';
// Importa o arquivo que contém as constantes das rotas nomeadas da aplicação.
import 'package:maps_imagens/utilis/app_rotas.dart';
import 'package:provider/provider.dart';

// Tela principal que exibe a lista de lugares. É um StatelessWidget pois
// provavelmente receberá os dados de um provider e não gerenciará seu próprio estado.
class PlacesListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Scaffold é a estrutura visual básica da tela.
    return Scaffold(
      // Barra no topo da tela (AppBar).
      appBar: AppBar(
        // Título da tela exibido na AppBar.
        title: const Text('Minhas Viagens'),
        // Lista de widgets (botões) a serem exibidos à direita do título.
        actions: [
          // Um botão com um ícone.
          IconButton(
            // Ação a ser executada quando o botão for pressionado.
            onPressed: () {
              // Navega para a tela de formulário (PlaceFormScreen) usando a rota nomeada.
              Navigator.of(context).pushNamed(AppRotas.placeForm);
            },
            // Ícone de "adicionar" para o botão.
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      // Corpo da tela.
      body: Consumer<GreatPlaces>(
        child: const Center(child: Text("Nenhum local cadastrado")),
        builder: (context, greatPlaces, ch) => greatPlaces.itemsCount == 0
            ? ch!
            : ListView.builder(
                itemCount: greatPlaces.itemsCount,
                itemBuilder: (context, i) => ListTile(
                  leading: CircleAvatar(
                    backgroundImage: FileImage(
                      greatPlaces.itemByIndex(i).image,
                    ),
                  ),
                ),
              ),
      ),
    );
  }
}
