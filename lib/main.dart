import 'package:flutter/material.dart';
import 'package:flutter_app1/transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
      id: 't1',
      amount: 69.99,
      title: 'New Shoes',
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      amount: 16.52,
      title: 'New socks',
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.green,
              child: Text('CHARTS'),
              elevation: 5,
            ),
          ),
          Column(
            children: transactions.map((tx) {
              return Card(
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 10,
                          ),
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                                width: 2,
                              )),
                          padding: EdgeInsets.all(10),
                          child: Text(
                            tx.amount.toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Column(
                          children: <Widget>[
                            Text(tx.title),
                            Text(
                              tx.date.toString(),
                            ),
                          ],
                        )
                      ],
                    ),
                    ExpansionTile(
                      title: Text('sup'),
                      children: <Widget>[
                        Text(tx.title)
                      ],
                    ),
///                    ExpansionPanelList(
///                      expansionCallback: (int index,bool isExpanded){
///                        setState((){
///                          tx[index].isExpanded =
///                        })
///                      },
///                    )

                  ],
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
