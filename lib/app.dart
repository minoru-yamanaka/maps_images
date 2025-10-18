import 'package:flutter/material.dart';
import 'package:maps_imagens/providers/great_places.dart';
import 'package:maps_imagens/screens/place_form_screen.dart';
import 'package:maps_imagens/screens/places_list_screen.dart';
import 'package:maps_imagens/utilis/app_rotas.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GreatPlaces(),
      child: MaterialApp(
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
      ),
    );
  }
}
