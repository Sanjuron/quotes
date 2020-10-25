import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<String> quotes = [
    'Voilà Voilà Voilà',
    'Deviens celui que tu rêves d\' être où donnes à la mort celui que tu es',
    'Je ne sais plus'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Citations"),
        centerTitle: true,
        backgroundColor: Colors.green[800],
      ),
      body: Column(
        children: quotes.map((quote) {
          return Text(quote);
        }).toList(),
      ),
    );
  }
}
