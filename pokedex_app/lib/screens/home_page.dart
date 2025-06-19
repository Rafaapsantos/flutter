import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokedex_app/core/themes/app_colors.dart';
import 'package:pokedex_app/core/themes/app_size.dart';
import 'package:pokedex_app/data/datasources/pokemon_data_source.dart';
import 'package:pokedex_app/domain/repositories/pokemon_repository.dart';
import 'package:pokedex_app/screens/favorite_page.dart';
import 'package:pokedex_app/stores/pokemon_store.dart';
import 'package:pokedex_app/widgets/pokemon_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PokemonStore _store = PokemonStore(
    repository: PokemonRepository(dataSource: PokemonDataSource(Dio())),
  );

  @override
  void initState() {
    super.initState();
    _store.addListener(_onStoreUpdated); //Registra o listener
    _store.getPokemonCards(); //Inicia o carregamento de todos os Pokémons
  }

  @override
  void dispose() {
    _store.removeListener(_onStoreUpdated);
    super
        .dispose(); //Remove o listener da store ao destruir a tela, evitando vazamento de memória.
  }

  //Sempre que o PokemonStore for atualizado, ele força o rebuild da tela.
  void _onStoreUpdated() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final filteredPokemons = _store.filteredPokemons;

    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              padding: const EdgeInsets.only(
                top: AppSizes.extraLarge,
                left: AppSizes.large,
              ),
              alignment: Alignment.centerLeft,
              color: Colors.grey[200],
              child: const Text(
                'Menu',
                style: TextStyle(
                  fontSize: AppSizes.large,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              title: const Text(
                'Meus Favoritos',
                style: TextStyle(
                  fontSize: AppSizes.largeMedium,
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: const Icon(Icons.favorite, color: AppColors.red),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FavoritePage()),
                );
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('Pokédex'),
        backgroundColor: AppColors.white,
        foregroundColor: AppColors.black,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(AppSizes.large),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Pokédex',
              style: GoogleFonts.bebasNeue(
                fontSize: AppSizes.extraLarge,
                fontWeight: FontWeight.bold,
                color: AppColors.black87,
              ),
            ),
            Text(
              'Procure um pokémon pelo nome na barra de pesquisa.',
              style: TextStyle(
                fontSize: AppSizes.large,
                color: const Color.fromARGB(255, 85, 85, 85),
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: AppSizes.small),
            //Filtra os Pokémons com base no texto digitado
            TextField(
              decoration: InputDecoration(
                hintText: 'Pesquisar...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(AppSizes.small),
                ),
              ),
              //Notifica os listeners para atualizar a UI
              onChanged: _store.setSearchQuery,
            ),
            SizedBox(height: AppSizes.large),
            Expanded(
              child:
                  _store
                          .isLoading //Se o app ainda está carregando os dados, mostra o CircularProgressIndicator()
                      ? const Center(child: CircularProgressIndicator())
                      : _store.errorMessage !=
                          null //Se houve algum erro na requisição, mostra mensagem de erro
                      ? Center(child: Text(_store.errorMessage!))
                      : filteredPokemons
                          .isEmpty //Se não está carregando nem tem erro, mas nenhum pokémon foi encontrado com o filtro digitado, exibe esse aviso.
                      ? const Center(child: Text('Nenhum pokémon encontrado'))
                      : GridView.builder(
                        //Já carregou, Não deu erro, Tem resultados no filtro? Ele mostra os cards dos Pokémons
                        gridDelegate: //configuração da grade
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 0.9,
                          mainAxisSpacing: AppSizes.small,
                          crossAxisSpacing: AppSizes.small,
                        ),
                        itemCount:
                            filteredPokemons
                                .length, //Quantidade total de itens que o GridView vai construir.
                        //cria o widget para cada item da lista.
                        itemBuilder: (context, index) {
                          final pokemon = filteredPokemons[index];
                          return PokemonCard(
                            id: pokemon.id,
                            name: pokemon.forms.first.name,
                            urlImage:
                                pokemon.sprites.other.officialArtwork.image,
                            types: pokemon.types,
                          );
                        },
                      ),
            ),
          ],
        ),
      ),
    );
  }
}
