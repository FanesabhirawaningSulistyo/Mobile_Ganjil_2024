import 'package:flutter/material.dart';
import 'package:pizza_api_fanesa/pizza.dart';
import 'httphelper.dart';

class PizzaDetailScreen extends StatefulWidget {
  final Pizza pizza;
  final bool isNew;

  const PizzaDetailScreen({super.key, required this.pizza, required this.isNew});

  @override
  State<PizzaDetailScreen> createState() => PizzaDetailScreenState();
}

class PizzaDetailScreenState extends State<PizzaDetailScreen> {
  final TextEditingController txtId = TextEditingController();
  final TextEditingController txtName = TextEditingController();
  final TextEditingController txtDescription = TextEditingController();
  final TextEditingController txtPrice = TextEditingController();
  final TextEditingController txtImageUrl = TextEditingController();
  String operationResult = '';

    @override
  void initState() {
    super.initState();
    if (!widget.isNew) {
      txtId.text = widget.pizza.id.toString();
      txtName.text = widget.pizza.pizzaName;
      txtDescription.text = widget.pizza.description;
      txtPrice.text = widget.pizza.price.toString();
      txtImageUrl.text = widget.pizza.imageUrl;
    }
  }

  @override
  void dispose() {
    txtId.dispose();
    txtName.dispose();
    txtDescription.dispose();
    txtPrice.dispose();
    txtImageUrl.dispose();
    super.dispose();
  }

  Future postPizza() async {
  HttpHelper helper = HttpHelper();
  
  // Membuat objek Pizza dengan memberikan semua parameter yang dibutuhkan
  Pizza pizza = Pizza(
    id: int.tryParse(txtId.text) ?? 0,  // Memberikan nilai default 0 jika ID tidak valid
    pizzaName: txtName.text,            // Nama pizza dari input pengguna
    description: txtDescription.text,   // Deskripsi pizza dari input pengguna
    price: double.tryParse(txtPrice.text) ?? 0.0,  // Memberikan nilai default 0.0 jika harga tidak valid
    imageUrl: txtImageUrl.text,         // URL gambar pizza dari input pengguna
  );
  final result = await (widget.isNew
        ? helper.postPizza(pizza) // Send POST request to add a new pizza
        : helper.putPizza(pizza)); // Send PUT request to update existing pizza

    setState(() {
    operationResult = result;  // Menyimpan hasil dari permintaan POST
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pizza Detail'),
        backgroundColor: Colors.deepPurple,
        titleTextStyle: const TextStyle(
          color: Colors.white,
        ),
        iconTheme: const IconThemeData(
          color: Colors.white,  // Mengubah warna ikon menjadi putih
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                operationResult,
                style: TextStyle(
                  color:  Colors.white,
                  backgroundColor: Colors.purple,
                ),
              ),
              const SizedBox(height: 24),
              TextField(
                controller: txtId,
                decoration: const InputDecoration(hintText: 'Insert ID'),
              ),
              const SizedBox(height: 24),
              TextField(
                controller: txtName,
                decoration: const InputDecoration(hintText: 'Insert Pizza Name'),
              ),
              const SizedBox(height: 24),
              TextField(
                controller: txtDescription,
                decoration: const InputDecoration(hintText: 'Insert Description'),
              ),
              const SizedBox(height: 24),
              TextField(
                controller: txtPrice,
                decoration: const InputDecoration(hintText: 'Insert Price'),
              ),
              const SizedBox(height: 24),
              TextField(
                controller: txtImageUrl,
                decoration: const InputDecoration(hintText: 'Insert Image Url'),
              ),
              const SizedBox(height: 48),
              ElevatedButton(
                child: const Text('Send Post'),
                onPressed: () {
                  postPizza();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
