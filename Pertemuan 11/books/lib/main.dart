import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo Fanesa',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
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
// Langkah 4 : , buat variabel status integer baru bernama appCounter
class _MyHomePageState extends State<MyHomePage> {
  int appCounter = 0; // Variabel untuk menyimpan jumlah pembukaan aplikasi

  // Langkah 5: Membuat metode asinkron untuk membaca dan menulis preferensi
  Future readAndWritePreference() async {
    // Langkah 6: Mendapatkan instance dari SharedPreferences
    SharedPreferences prefs = await SharedPreferences.getInstance();
    
    // Langkah 7: Membaca nilai appCounter, jika belum ada maka set ke 0
    appCounter = prefs.getInt('appCounter') ?? 0;
    
    // Menaikkan nilai appCounter
    appCounter++;
    
    // Langkah 8: Menyimpan nilai appCounter yang sudah diperbarui
    await prefs.setInt('appCounter', appCounter);

    // Langkah 9: Memperbarui tampilan dengan nilai appCounter yang baru
    setState(() {});
  }

  // Langkah 13: Membuat metode untuk menghapus preferensi yang disimpan
  Future deletePreference() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.clear(); // Menghapus semua preferensi yang disimpan
    setState(() {
      appCounter = 0; // Mengatur nilai appCounter ke 0 setelah dihapus
    });
  }

  @override
  void initState() {
    super.initState();
    // Langkah 10: Memanggil metode readAndWritePreference di initState
    readAndWritePreference();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shared Preferences Example'),
        backgroundColor: Colors.purple,
        titleTextStyle: const TextStyle(
          color: Colors.white,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('You have opened the app $appCounter times.'), // Menampilkan jumlah pembukaan aplikasi
            ElevatedButton(
              onPressed: () {
                // Langkah 14: Reset counter dengan menghapus preferensi
                deletePreference();
              },
              child: const Text('Reset counter'), // Tombol untuk mereset counter
            ),
          ],
        ),
      ),
    );
  }
}
