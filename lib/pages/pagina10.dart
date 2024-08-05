import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class Pagina10_UsoDeAPI extends StatefulWidget {
  const Pagina10_UsoDeAPI({super.key});

  @override
  State<Pagina10_UsoDeAPI> createState() => _Pagina10_UsoDeAPIState();
}

class _Pagina10_UsoDeAPIState extends State<Pagina10_UsoDeAPI> {
  late Future<List<Pokemon>> _listadoPokemons; //* Hacemos una lista de pokemon que inicializaremos más adelante.
  
  //La función es asíncrona porque estamos haciendo una petición a un servidor y puede tardar en responder.
  Future<List<Pokemon>> fetchPokemon() async{  
    final response = await http.get(Uri.parse("https://pokeapi.co/api/v2/pokemon?limit=10"));
    List<Pokemon> pokemons = [];
    
    if (response.statusCode == 200) { //El codigo 200 significa que la petición fue exitosa.
      String body = utf8.decode(response.bodyBytes); //Quitamos el decode
      
      final JSonData = json.decode(body); //Decodificamos el Json

      for (var pokemon in JSonData['results']) {
        String nombrePokemon = pokemon['name'];
        String referenciaPokemon = pokemon['url'];
        String pokemonImageUrl = await fetchPokemonImageUrl(referenciaPokemon);

        Pokemon pokemontemporal = Pokemon(name: nombrePokemon, urlImagen: pokemonImageUrl);
        pokemons.add(pokemontemporal);

        //TODO: Eliminar
        print('Nombre: $nombrePokemon - Imagen: $pokemonImageUrl');
      }

    } else {
      print('Request failed with status: ${response.statusCode}');
    }

    return pokemons;
  }

  @override
  void initState(){
    super.initState();
    _listadoPokemons = fetchPokemon();
    _listadoPokemons.ignore(); //! Eliminar
  }
   
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Pagina 10 - Uso de API'),
    );
  }
}

class Pokemon{
  String name;
  String urlImagen;

  Pokemon({required this.name, required this.urlImagen});
}

Future<String> fetchPokemonImageUrl(String referenciaPokemon) async {
  final responseImagen = await http.get(Uri.parse(referenciaPokemon));
  String urlImagenPokemon = '';
  
  if (responseImagen.statusCode == 200) {
    String bodyImagen = utf8.decode(responseImagen.bodyBytes);
    final JSonDataImagen = json.decode(bodyImagen);
    
    urlImagenPokemon = JSonDataImagen['sprites']['front_default'];

  } else {
    print('Request failed with status: ${responseImagen.statusCode}');
  }

  return urlImagenPokemon;
}