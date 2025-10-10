import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_2/blocs/characters.dart';

class CharactersScreeen extends StatefulWidget {
  const CharactersScreeen._();

  static Widget init() {
    return ChangeNotifierProvider(
      create: (_) => CharactersProvider(),

    );
  }

  @override
  State<CharactersScreeen> createState() => _CharactersScreeenState();
}

class _CharactersScreeenState extends State<CharactersScreeen> {
  @override
  void initState() {
    Provider.of<CharactersProvider>(context, listen: false).loadCharacters();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final charactersProvider = Provider.of<CharactersProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Characters',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.orange[300],
      ),
      body: charactersProvider.characters == null
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemBuilder: (context, index) {
                final character = charactersProvider.characters!.results[index];
                return Padding(
                  padding: const EdgeInsets.all(30),
                  child: Card(
                    child: ListTile(
                      leading: character.portraitPath != null
                          ? Image.network(
                              character.portraitPath!,
                              errorBuilder: (context, error, stackTrace) =>
                                  const CircleAvatar(child: Icon(Icons.person)),
                            )
                          : const CircleAvatar(child: Icon(Icons.person)),
                      title: Text(character.name),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(character.occupation ?? 'Unknown Occupation'),
                          if (character.phrases != null &&
                              character.phrases!.isNotEmpty)
                            ...character.phrases!
                                .map((phrase) => Text('• $phrase'))
                                .toList(),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
