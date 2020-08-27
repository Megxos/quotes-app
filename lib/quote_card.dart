import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {

  final Quote quote;
  final Function delete;
  QuoteCard({ this.quote , this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 20
              ),
            ),
            SizedBox(height: 5,),
            Text(
                '- ${quote.author}',
                style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 15
                )
            ),
            SizedBox(height: 5,),
            FlatButton.icon(
              onPressed: delete,
              label: Text(
                  "delete",
                style: TextStyle(
                  color: Colors.red
                ),
              ),
              icon: Icon(
                Icons.delete,
                color: Colors.red,
              ),
            )
          ],
        ),
      ),
    );
  }
}
