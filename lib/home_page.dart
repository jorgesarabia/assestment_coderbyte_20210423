import 'package:assestment_coderbyte_20210423/solution.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String word = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Assestment 23-04-2021'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28.0),
        child: ListView(
          children: [
            Text(
              _description,
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextFormField(
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Enter your text',
                ),
                onChanged: (input) {
                  setState(() {
                    word = letterCount(input);
                  });
                },
              ),
            ),
            if (word.isNotEmpty)
              Text(
                'Result: $word',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
          ],
        ),
      ),
    );
  }

  String get _description {
    String desc = 'Dada una serie de palabras el algorimo debe devolver ';
    desc += 'la primera palabra con el mayor número de letras repetidas ';
    desc += 'o bien -1';

    return desc;
  }
}
