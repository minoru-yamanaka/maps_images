import 'package:flutter/material.dart';
// Importa o arquivo que contém as constantes das rotas nomeadas da aplicação.
import 'package:maps_imagens/utilis/app_rotas.dart';

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
      body: const Center(
        // Exibe um indicador de progresso (loading spinner) no centro.
        // Isso geralmente é usado como um estado inicial, enquanto os dados
        // da lista de lugares estão sendo carregados.
        child: CircularProgressIndicator(),
      ),
    );
  }
}
