// Importa a biblioteca 'io' para permitir o uso de manipulação de arquivos, como o tipo 'File'.
import 'dart:io';

// Classe que define o modelo de dados para uma localização geográfica.
class PlaceLocation {
  final double latitude; // Armazena a latitude (coordenada geográfica).
  final double longitude; // Armazena a longitude (coordenada geográfica).
  final String?
  address; // Endereço opcional formatado como texto. O '?' indica que pode ser nulo.

  // Construtor da classe para inicializar as propriedades.
  const PlaceLocation({
    required this.latitude,
    required this.longitude,
    this.address,
  });
}

// Classe que define o modelo de dados para um lugar cadastrado.
class Place {
  final String id; // Identificador único para o lugar.
  final String title; // Nome ou título do lugar.
  final PlaceLocation?
  location; // Objeto do tipo PlaceLocation, contendo os dados de localização.
  final File
  image; // Arquivo da imagem associada ao lugar, salvo no dispositivo.

  // Construtor da classe para criar uma nova instância de um lugar.
  const Place({
    required this.id,
    required this.title,
    required this.location,
    required this.image,
  });
}
