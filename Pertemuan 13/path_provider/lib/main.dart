import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String documentsPath = ''; // Langkah 4: Variabel untuk menyimpan path dokumen
  String tempPath = '';      // Langkah 4: Variabel untuk menyimpan path temporary

  // Langkah 5: Metode untuk mengambil direktori aplikasi
  Future getPaths() async {
    final docDir = await getApplicationDocumentsDirectory(); // Mengambil direktori dokumen
    final tempDir = await getTemporaryDirectory();           // Mengambil direktori temporary
    setState(() {
      documentsPath = docDir.path; // Memperbarui path dokumen
      tempPath = tempDir.path;     // Memperbarui path temporary
    });
  }

  @override
  void initState() {
    super.initState();
    getPaths(); // Langkah 6: Memanggil metode getPaths saat widget diinisialisasi
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Path Provider'),
        backgroundColor: Colors.blue,
        titleTextStyle: const TextStyle(
          color: Colors.white, // Menentukan warna teks di AppBar
        ),
      ),
       // Judul App Bar
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Langkah 7: Menampilkan path yang diperoleh dalam widget Text
          Text('Doc path: $documentsPath'), 
          Text('Temp path: $tempPath'),
        ],
      ),
    );
  }
}
