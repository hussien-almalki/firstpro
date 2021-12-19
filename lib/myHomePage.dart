import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counterPlus = 0;
  int _counterMinus = 10;

  void _incrementCounterPlus() {
    setState(() {
      _counterPlus++;
    });
  }

  void _incrementCounterMinus() {
    setState(() {
      // _counterMinus--;
      if (_counterMinus >= 0) {
        _counterMinus--;
      } else {
        print(0);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You will notice an increase in the number !',
                style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.lineThrough)),
            Text(
              '$_counterPlus',
              style: Theme.of(context).textTheme.headline1,
            ),
            const Text('You will notice a desrease in the number !',
                style: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )),
            Text(
              '$_counterMinus',
              style: Theme.of(context).textTheme.headline1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        shape: Border.all(width: 2, color: Colors.blue),
        onPressed: () {
          _incrementCounterMinus();
          _incrementCounterPlus();
        },
        //onPressed: _incrementCounterMinus
        tooltip: 'Increment',
        child: const Icon(Icons.check),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      bottomNavigationBar: new BottomAppBar(
        color: Colors.white,
      ),
    );
  }
}
