import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_exemplo/stores/controller_store.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final ControllerStore controller = ControllerStore();

  Future<void> _getFile() async {
    await controller.getFIle();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MobX"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Caminho do arquivo carregado:',
              style: Theme.of(context).textTheme.button,
            ),
            Observer(builder: (_) {
              return Padding(
                padding: const EdgeInsets.all(14.0),
                child: Text(
                  (controller.file != null)
                      ? "${controller.file.path}"
                      : "No Name", // '$_counter',
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      .copyWith(fontSize: 20),
                ),
              );
            }),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _getFile(),
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
