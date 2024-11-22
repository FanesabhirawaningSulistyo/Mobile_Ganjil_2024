import 'dart:convert';
import './pizza.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter JSON Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
  List<Pizza> myPizzas = [];
  // String pizzaString = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('JSON'),
        backgroundColor: Colors.blue,
        titleTextStyle: const TextStyle(
          color: Colors.white,
        ),
      ),
      body: ListView.builder(
            itemCount: myPizzas.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(myPizzas[index].pizzaName), 
                subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(myPizzas[index].description), // Display description
              Text(
                '\$${myPizzas[index].price.toStringAsFixed(2)}', // Display price formatted
                style: TextStyle(color: Colors.green), // Optional: Green color for price
              ),
            ],
          ),
              );
            },
          ),

    );
  }

@override
void initState() {
  super.initState();
  readJsonFile().then((value) {
    setState(() {
      myPizzas = value; 
    });
    String json = convertToJSON(myPizzas);
    print(json);
    return myPizzas;
  });
}


  Future<List<Pizza>> readJsonFile() async {
    String myString = await DefaultAssetBundle.of(context)
        .loadString('assets/pizzalist.json');
    // setState(() {
    //   pizzaString = myString;
    // });
    List pizzaMapList = jsonDecode(myString);
    List<Pizza> myPizzas = [];
    for (var pizza in pizzaMapList) {
      Pizza myPizza = Pizza.fromJson(pizza);
      myPizzas.add(myPizza);
    }
    return myPizzas;
  }

  String convertToJSON(List<Pizza> pizzas) {
  return jsonEncode(pizzas.map((pizza) => jsonEncode(pizza)).toList());
}
}
