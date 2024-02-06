import 'package:flutter/material.dart';
import 'package:todolist/models/item.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false, //Retira Banner Demo do App
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: false, // Testar true.
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  //HomePage({super.key});
  //var items = List<Item>();
  var items = <Item>[];

  HomePage() {
    items = [];
    items.add(Item(title: 'Item 1', done: false));
    items.add(Item(title: 'Item 2', done: true));
    items.add(Item(title: 'Item 3', done: false));
  }

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Todo List'),
        ),
        body: ListView.builder(
          itemCount: widget.items.length,
          itemBuilder: (BuildContext ctx, int index) {
            return Text(widget.items[index].title.toString());
          },
        ));
  }
}
