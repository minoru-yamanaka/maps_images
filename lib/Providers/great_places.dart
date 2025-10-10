// Esta classe gerencia a lista de lugares e notifica os ouvintes (widgets) sobre mudanças.
import 'package:flutter/widgets.dart';
import 'package:maps_imagens/models/place.dart';

class GreatPlaces with ChangeNotifier {
  // Lista privada que armazena os lugares. Só pode ser modificada DENTRO desta classe.
  final List<Place> _items = [];

  // Getter público para acessar a lista de lugares.
  List<Place> get items {
    // Retorna uma CÓPIA da lista. Isso protege a lista original `_items`
    // de ser modificada por outras partes do aplicativo.
    return [..._items];
  }

  // Getter que retorna a quantidade total de lugares na lista.
  int get itemsCount {
    return _items.length; // Acessa o comprimento (length) da lista interna.
  }

  // Método que permite buscar um lugar específico pelo seu índice (posição) na lista.
  Place itemByIndex(int index) {
    return _items[index]; // Retorna o item que está na posição `index` da lista.
  }
}
