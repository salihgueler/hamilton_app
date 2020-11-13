import 'package:flutter/material.dart';
import 'package:hamilton_app/data/music_list.dart';

void main() {
  runApp(MulticampApp());
}

class MulticampApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MulticampHamiltonApp(),
    );
  }
}

class MulticampHamiltonApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final musicList = MusicList.generateList();
    return Scaffold(
      appBar: AppBar(
        title: Text('Hamilton App'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: musicList.length,
        itemBuilder: (_, int index) {
          final musicItem = musicList[index];
          return Container(
            margin: const EdgeInsets.all(8),
            child: Card(
              child: Column(
                children: [
                  Expanded(child: Image.network(musicItem.imageUrl)),
                  Text(musicItem.title),
                  Text(
                    musicItem.artist,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
