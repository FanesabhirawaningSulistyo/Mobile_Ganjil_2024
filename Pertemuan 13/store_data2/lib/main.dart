import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

void main() {
  runApp(const MyApp()); // Langkah 2: Membuat widget root
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Secure Storage Demo', // Langkah 2: Menentukan judul aplikasi
      theme: ThemeData(
        primarySwatch: Colors.deepPurple, // Langkah 2: Menentukan tema aplikasi
      ),
      home: const MyHomePage(), // Langkah 2: Menentukan halaman utama
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState(); // Langkah 2: Membuat state untuk widget
}

class _MyHomePageState extends State<MyHomePage> {
  final pwdController = TextEditingController(); // Langkah 4: Controller untuk input teks
  final storage = const FlutterSecureStorage(); // Langkah 4: Membuat instance FlutterSecureStorage
  final myKey = 'myPass'; // Langkah 4: Key untuk menyimpan data
  String myPass = ""; // Langkah 4: Variabel untuk menampilkan data yang diambil

  // Langkah 5: Metode untuk menulis data ke penyimpanan aman
  Future<void> writeToSecureStorage() async {
    await storage.write(key: myKey, value: pwdController.text);
  }

  // Langkah 7: Metode untuk membaca data dari penyimpanan aman
  Future<String> readFromSecureStorage() async {
    String secret = await storage.read(key: myKey) ?? '';
    return secret;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Secure Storage Demo'), // Langkah 2: Judul AppBar
        backgroundColor: Colors.deepPurple,
        titleTextStyle: const TextStyle(
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0), // Langkah 9: Padding untuk tata letak
          child: Column(
            children: [
              // Langkah 2: Membuat kolom input teks
              TextField(
                controller: pwdController,
                decoration: const InputDecoration(
                  labelText: 'Enter a value to store securely',
                ),
              ),
              const SizedBox(height: 16.0), // Langkah 2: Spasi antar elemen
              // Langkah 6: Tombol untuk menyimpan data
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple, // Warna tombol biru
                  foregroundColor: Colors.white, // Teks putih
                ),
                child: const Text('Save Value'),
                onPressed: () {
                  writeToSecureStorage(); // Menyimpan data ke penyimpanan aman
                },
              ),
              const SizedBox(height: 16.0), // Spasi antar elemen
              // Langkah 8: Tombol untuk membaca data
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple, // Warna tombol biru
                  foregroundColor: Colors.white, // Teks putih
                ),
                child: const Text('Read Value'),
                onPressed: () {
                  readFromSecureStorage().then((value) {
                    setState(() {
                      myPass = value; // Memperbarui state untuk menampilkan data
                    });
                  });
                },
              ),
              const SizedBox(height: 16.0), // Spasi antar elemen
              // Langkah 9: Menampilkan data yang diambil dari penyimpanan
              Text(
                myPass,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
