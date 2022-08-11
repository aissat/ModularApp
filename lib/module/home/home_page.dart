import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:my_smart_app/routers/app_routes.dart';

import 'home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ctl = Modular.get<HomeController>();

  void _incrementCounter() {
    ctl.onIncrement();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // log('build scope');
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${ctl.counter}',
              style: Theme.of(context).textTheme.headline4,
            ),
            ElevatedButton(
              child: const Text('Settings'),
              onPressed: () => Modular.to.navigate(Routes.settings),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
