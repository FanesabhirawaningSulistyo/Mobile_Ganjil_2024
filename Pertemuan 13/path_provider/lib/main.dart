import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io'; // Langkah 1: Import pustaka dart:io

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
  String tempPath = ''; // Langkah 4: Variabel untuk menyimpan path temporary

  late File myFile; // Langkah 2: Variabel State untuk file
  String fileText = ''; // Langkah 2: Variabel State untuk isi file

  // Langkah 5: Metode untuk mengambil direktori aplikasi
  Future getPaths() async {
    final docDir = await getApplicationDocumentsDirectory(); // Mengambil direktori dokumen
    final tempDir = await getTemporaryDirectory(); // Mengambil direktori temporary
    setState(() {
      documentsPath = docDir.path; // Memperbarui path dokumen
      tempPath = tempDir.path; // Memperbarui path temporary
    });
  }

  // Langkah 3: Metode untuk menulis file
  Future<bool> writeFile() async {
    try {
      await myFile.writeAsString('Margherita, Capricciosa, Napoli');
      return true;
    } catch (e) {
      return false;
    }
  }

  // Langkah 5: Metode untuk membaca file
  Future<bool> readFile() async {
    try {
      String fileContent = await myFile.readAsString(); // Membaca isi file
      setState(() {
        fileText = fileContent; // Menyimpan isi file ke dalam State
      });
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  void initState() {
    super.initState();
    getPaths().then((_) { // Langkah 4: Memanggil getPaths saat widget diinisialisasi
      myFile = File('$documentsPath/pizzas.txt'); // Membuat file di direktori dokumen
      writeFile(); // Memanggil metode writeFile untuk menulis data ke file
    });
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Langkah 7: Menampilkan path yang diperoleh dalam widget Text
          Text('Doc path: $documentsPath'),
          Text('Temp path: $tempPath'),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue, // Warna latar belakang biru
              foregroundColor: Colors.white, // Warna teks putih
            ),
            child: const Text('Read File'),
            onPressed: () => readFile(), // Membaca file saat tombol ditekan
          ),

          Text(fileText), // Menampilkan isi file
        ],
      ),
    );
  }
}
