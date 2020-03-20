void main() => runApp(Example());

class Example extends StatefulWidget {
  _ExampleState createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  Widget _body;

  static const String _title = 'Material List Demonstration';

  @override
  void initState() {
    super.initState();
    _body = ListDemo(type: ListDemoType.oneLine);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(_title),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.looks_one),
              onPressed: () {
                setState(() {
                  _body = ListDemo(type: ListDemoType.oneLine);
                });
              },
            ),
            IconButton(
              icon: const Icon(Icons.looks_two),
              onPressed: () {
                setState(() {
                  _body = ListDemo(type: ListDemoType.twoLine);
                });
              },
            ),
          ],
        ),
        body: _body,
      ),
    );
  }
}
