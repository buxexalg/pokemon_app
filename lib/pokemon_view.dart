import 'package:flutter/material.dart';
import 'package:pokemon_app/pokemon_controller.dart';

class PokeView extends StatefulWidget {
  @override
  _PokeViewState createState() => _PokeViewState();
}

class _PokeViewState extends State<PokeView> {
  final controller = PokemonController();

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Scaffold(
            appBar: AppBar(
              title: Center(child: Text("Pokemon App")),
              backgroundColor: Colors.grey[900],
            ),
            body: FutureBuilder(
                future: controller.pokemon,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.none) {
                  } else if (snapshot.connectionState != ConnectionState.done) {
                    return Center(child: CircularProgressIndicator());
                  }

                  if (snapshot.hasData) {
                    return Container(
                        color:
                            controller.getBackgroundColor(snapshot.data.type),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                child: Image.network(
                                  snapshot.data.imageUrl,
                                  height: 200,
                                  width: 200,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 30),
                                child: Center(
                                    child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.black38,
                                              offset: const Offset(
                                                5.0,
                                                5.0,
                                              ),
                                              blurRadius: 10.0,
                                              spreadRadius: 1.0,
                                            )
                                          ],
                                        ),
                                        padding: EdgeInsets.symmetric(
                                            vertical: 10, horizontal: 40),
                                        child: Text(
                                            snapshot.data.nome[0]
                                                    .toUpperCase() +
                                                snapshot.data.nome.substring(1),
                                            style: TextStyle(fontSize: 24)))),
                              ),
                            ]));
                  } else if (snapshot.hasError) {
                    return Text(snapshot.error,
                        style: TextStyle(fontSize: 18, color: Colors.red));
                  }
                  return Container();
                }),
            floatingActionButton: Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.grey[900]),
                  onPressed: () => setState(() {
                        controller.getPokemon();
                      }),
                  child: Text("Carregar Pokemon")),
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked));
  }
}
