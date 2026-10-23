import 'package:flutter/material.dart';



import 'package:http/http.dart' as http;

import 'dart:convert';
import 'dart:math';


class RandonDaD extends StatefulWidget {
  const RandonDaD({ super.key });

  

  @override
  State<RandonDaD> createState() => _RandonDaDState();
}

class _RandonDaDState extends State<RandonDaD> {


  //Enlistamos los iteams del api
  final List<String> _categories = ['spells', 'monsters', 'classes'];
  bool _isLoading = false;
  String? _errorMessage;
  Map<String, dynamic>? _resultData;

  String _selectedCategory = '';

  // Función para obtener un elemento aleatorio
  Future<void> _fetchRandomItem() async {
    setState(() {
      _isLoading = true;
      _errorMessage = null;
      _resultData = null;
    });
  try {
      // 1. Elegir una categoría aleatoria
      final random = Random();

      //_selectedCategory = _categories[random.nextInt(_categories.length)]; 
      _selectedCategory = _categories[1];

      // 2. Obtener la lista completa de elementos de esa categoría
      final listUrl = Uri.parse('https://www.dnd5eapi.co/api/$_selectedCategory');
      final listResponse = await http.get(listUrl);

      if (listResponse.statusCode == 200) {
        final Map<String, dynamic> listData = json.decode(listResponse.body);
        final List<dynamic> results = listData['results'];

        if (results.isNotEmpty) {
          // 3. Seleccionar un elemento al azar de la lista
          final randomItem = results[random.nextInt(results.length)];
          final String itemUrl = 'https://www.dnd5eapi.co${randomItem['url']}';

          // 4. Consultar los detalles específicos del elemento seleccionado
          final detailResponse = await http.get(Uri.parse(itemUrl));

          if (detailResponse.statusCode == 200) {
            setState(() {
              _resultData = json.decode(detailResponse.body);
              _isLoading = false;
            });
          } else {
            throw Exception('Error al obtener los detalles del elemento.');
          }
        } else {
          throw Exception('Categoría vacía.');
        }
      } else {
        throw Exception('Error al conectar con la API.');
      }
    } catch (e) {
      setState(() {
        _errorMessage = e.toString();
        _isLoading = false;
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    
 return Column(
          children: [
            ElevatedButton.icon(
              onPressed: _isLoading ? null : _fetchRandomItem,
              icon: const Icon(Icons.casino),
              label: const Text(
                '¡Lanzar dado (Buscar Aleatorio)!',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: _buildContent(),
            ),
          ],      
    );
  }













    Widget _buildContent() {
      if (_isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (_errorMessage != null) {
      return Center(
        child: Text(
          'Ocurrió un error:\n$_errorMessage',
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 16, color: Colors.red),
        ),
      );
    }

    if (_resultData == null) {
      return const Center(
        child: Text(
          'Presiona el botón para descubrir un elemento aleatorio de D&D 5e.',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16, color: Colors.grey),
        ),
      );
    }

    // Extrayendo datos de forma segura (manejo dinámico dependiendo de la categoría)
    final String name = _resultData!['name'] ?? 'Sin nombre';
    final String type = _resultData!['type'] ?? _resultData!['index'] ?? 'Desconocido';
    
    // En D&D API, algunos elementos tienen 'intelligence' como int, otros no lo traen
    final int intelligence = _resultData!['intelligence'] ?? 0;

    // En D&D API, algunos elementos Imagen
    final String ImagePath  = _resultData!['image'];
    final String ImageURL  = 'https://www.dnd5eapi.co$ImagePath';


   
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Categoría: ${_selectedCategory.toUpperCase()}',
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            name,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          Text(
            'Tipo: $type',
            style: const TextStyle(
              fontSize: 18,
              color: Colors.grey,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          Text(
            'Inteligencia: $intelligence',
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
          Image.network(ImageURL)
          
        ],
      ),
    );
  }
}




    


