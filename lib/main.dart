import 'package:flutter/material.dart';
 import 'quote.dart';

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

  List<Quote> quotes = [
    Quote(author: "Dostoievski", text:"Vivre. N'importe comment s'il le faut mais vivre"),
    Quote(author: "Céline", text:"Emouvez-vous"),
    Quote(author: "auteur", text:"Citation"),
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
          return Text('${quote.text} - ${quote.author}' );
        }).toList(),
      ),
    );
  }
}
