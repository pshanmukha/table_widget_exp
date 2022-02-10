import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Table Widget Screen',
      theme: ThemeData(
      primarySwatch: Colors.blue,
      ),
      home: const TableWidgetScreenExp(),
    );
  }
}

class TableWidgetScreenExp extends StatefulWidget {
  const TableWidgetScreenExp({Key? key}) : super(key: key);

  @override
  _TableWidgetScreenExpState createState() => _TableWidgetScreenExpState();
}

class _TableWidgetScreenExpState extends State<TableWidgetScreenExp> {
  @override
  Widget build(BuildContext context) {
    TableRow _tableRow = const TableRow(
      children: <Widget>[
        Padding(
            padding: EdgeInsets.all(10.0),
          child: Text("Cell 1"),
        ),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Text("Cell 2"),
        ),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Text("Cell 3"),
        ),
      ]
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text("Table Widget Screen"),
      ),
      body: Center(
        child: Table(
          border: TableBorder.all(),
          defaultColumnWidth: const FixedColumnWidth(120.0),
          children: <TableRow>[
            _tableRow,
            _tableRow,
            _tableRow,
            _tableRow,
            _tableRow,
          ],
        ),
      ),
    );
  }
}

