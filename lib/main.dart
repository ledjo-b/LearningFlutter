import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
      home: QuoteList(),
    ));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
        text: 'Be yourself everyone else is already taken.',
        author: 'Oscar Wilde'),
    Quote(
        text: 'Two things are infinite: the universe and human stupidity',
        author: 'Albert Einstein'),
    Quote(
        text: 'You only live once, but if you do it right, once is enough',
        author: 'Oscar Wilde'),
    Quote(
        text: 'If you tell the truth, you dont have to remember anything',
        author: 'Mark Twain'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awsome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(quote: quote)).toList(),
      ),
    );
  }
}
