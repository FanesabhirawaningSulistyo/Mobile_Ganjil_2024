import 'package:flutter/material.dart';
import 'package:pizza_api_fanesa/pizza_detail.dart';
import 'httphelper.dart';
import 'pizza.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pizza API',
      theme: ThemeData(primarySwatch: Colors.blue),
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
  // Fetching pizza data
  Future<List<Pizza>> callPizzas() async {
    HttpHelper helper = HttpHelper();
    return await helper.getPizzaList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pizza List'),
        backgroundColor: Colors.purple,
        titleTextStyle: const TextStyle(
          color: Colors.white,
        ),
      ),
      body: FutureBuilder<List<Pizza>>(
        future: callPizzas(),
        builder: (BuildContext context, AsyncSnapshot<List<Pizza>> snapshot) {
          if (snapshot.hasError) {
            return const Center(child: Text('Something went wrong'));
          }
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }
          // Display list of pizzas
          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (BuildContext context, int position) {
              return Dismissible(
                key: Key(snapshot.data![position].id.toString()), // Unique key for each pizza
                onDismissed: (direction) {
                  // Call deletePizza when a pizza is swiped away
                  HttpHelper helper = HttpHelper();
                  helper.deletePizza(snapshot.data![position].id);

                  // Remove the pizza from the list
                  setState(() {
                    snapshot.data!.removeAt(position);
                  });

                  // Show a snackbar after the pizza is deleted
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('${snapshot.data![position].pizzaName} deleted')),
                  );
                },
                child: ListTile(
                  title: Text(snapshot.data![position].pizzaName),
                  subtitle: Text(
                    '${snapshot.data![position].description}\n\$${snapshot.data![position].price.toStringAsFixed(2)}',
                  ),
                  isThreeLine: true,
                  onTap: () {
                    // Navigate to PizzaDetailScreen when a pizza is tapped
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PizzaDetailScreen(
                          pizza: snapshot.data![position],
                          isNew: false,  // Existing pizza
                        ),
                      ),
                    );
                  },
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          // Navigate to PizzaDetailScreen to add a new pizza
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PizzaDetailScreen(
                pizza: Pizza(),  // Empty pizza object for new pizza
                isNew: true,      // New pizza
              ),
            ),
          );
        },
      ),
    );
  }
}
