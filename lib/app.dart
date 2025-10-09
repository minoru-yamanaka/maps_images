import 'package:flutter/material.dart';
import 'package:maps_imagens/screens/place_form.dart';
import 'package:maps_imagens/screens/places_list_screen.dart';
import 'package:maps_imagens/utilis/app_rotas.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        visualDensity: VisualDensity
            .adaptivePlatformDensity, // Deixa a aplicação responsiva.
      ),
      home: PlacesListScreen(),
      routes: {
        AppRotas.placeForm: (ctx) => const PlaceFormScreen(),
      }, // A declaração de rotas termina aqui
      debugShowCheckedModeBanner: false,
    );
  }
}
