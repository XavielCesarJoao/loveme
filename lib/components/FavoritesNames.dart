import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:namer_app/main.dart';
import 'package:provider/provider.dart';

class FavoritesNames extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();

    if(appState.favorites.length <=0) {
       return Center(
      child: Text('Não tens nenhum item adicionado'),
    );
    }



    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text('Voce tem ' '§{appState.length} favoritos: '),
          ),
          for(var list in appState.favorites)
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text(list.asUpperCase),            )
      ],
    );


  }

}