**Laporan Praktikum**
# **Pertemuan 12**
### **Lanjutan State Management dengan Streams**
------

### **Data Mahasiswa**

><p>Nama : Fanesabhirawaning Sulistyo<p>
>NIM : 2241720027<p>
>Kelas : 3C<p>
>Prodi : D-IV Teknik Informatika<p>
>Jurusan : Teknologi Informasi<p>

<br>
Here's the adjusted text with images sourced from the specified URLs:

---

# Praktikum 1: Dart Streams

Selesaikan langkah-langkah praktikum berikut ini menggunakan editor Visual Studio Code (VS Code) atau Android Studio atau code editor lain kesukaan Anda. Jawablah di laporan praktikum Anda (ketik di `README.md`) pada setiap soal yang ada di beberapa langkah praktikum ini.

> **Perhatian**: Diasumsikan Anda telah berhasil melakukan setup environment Flutter SDK, VS Code, Flutter Plugin, dan Android SDK pada pertemuan pertama.

### Langkah 1: Buat Project Baru
Buatlah sebuah project flutter baru dengan nama `stream_nama` (beri nama panggilan Anda) di folder `week-13/src/` repository GitHub Anda.

### Langkah 2: Buka file `main.dart`
Ketiklah kode seperti berikut ini.<br>
<img src="https://jti-polinema.github.io/flutter-codelab/13-state-streams-bloc/img//117047be09411966.png">

> **Soal 1**
> - Tambahkan nama panggilan Anda pada `title` app sebagai identitas hasil pekerjaan Anda.<p>
> **Jawab**<p>
```dart
return MaterialApp(
      title: 'Fanesa',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const StreamHomepage(),
    );
```
> - Gantilah warna tema aplikasi sesuai kesukaan Anda.<p>
> **Jawab**<p>
```dart
return MaterialApp(
      title: 'Fanesa',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const StreamHomepage(),
    );
```
> - Lakukan commit hasil jawaban Soal 1 dengan pesan "W12: Jawaban Soal 1"

### Langkah 3: Buat file baru `stream.dart`
Buat file baru di folder `lib` project Anda. Lalu isi dengan kode berikut.<br>
<img src="https://jti-polinema.github.io/flutter-codelab/13-state-streams-bloc/img//ee0f84f142b60d33.png">

### Langkah 4: Tambah variabel `colors`
Tambahkan variabel di dalam class `ColorStream` seperti berikut.<br>
<img src="https://jti-polinema.github.io/flutter-codelab/13-state-streams-bloc/img//56185835fefa3f26.png">

> **Soal 2**
> - Tambahkan 5 warna lainnya sesuai keinginan Anda pada variabel `colors` tersebut.<p>
> **Jawab**
```dart
class ColorStream {
  final List<Color> colors = [
    Colors.blueGrey,
    Colors.amber,
    Colors.deepPurple,
    Colors.lightBlue,
    Colors.teal,
    Colors.pink,
    Colors.red,
    Colors.orange,
    Colors.green,
    Colors.blue.shade900,
  ];
}
```
> - Lakukan commit hasil jawaban Soal 2 dengan pesan "W12: Jawaban Soal 2"

### Langkah 5: Tambah method `getColors()`
Di dalam class `ColorStream`, ketik method seperti kode berikut. Perhatikan tanda bintang di akhir keyword `async*` (ini digunakan untuk melakukan `Stream` data).<br>
<img src="https://jti-polinema.github.io/flutter-codelab/13-state-streams-bloc/img//6fb085270ef336a.png">

### Langkah 6: Tambah perintah `yield*`
Tambahkan kode berikut ini:
```dart
yield* Stream.periodic(
  const Duration(seconds: 1), (int t) {
    int index = t % colors.length;
    return colors[index];
});
```

> **Soal 3**
> - Jelaskan fungsi keyword `yield*` pada kode tersebut!<P>
> **Jawab**<p>
>Fungsi keyword yield* pada kode tersebut adalah untuk menghasilkan nilai dari stream Stream.periodic. Keyword yield* memungkinkan kita untuk menghasilkan nilai dari stream lain atau iterable.<p>
> - Apa maksud isi perintah kode tersebut?<p>
> **Jawab**<p>
> Isi perintah kode tersebut adalah untuk menghasilkan stream warna yang berganti setiap satu detik. Stream ini dihasilkan dengan cara menghasilkan nilai dari stream Stream.periodic yang setiap detiknya menghasilkan nilai integer. Nilai integer tersebut kemudian digunakan untuk menentukan indeks warna yang akan dihasilkan.
> - Lakukan commit hasil jawaban Soal 3 dengan pesan "W12: Jawaban Soal 3"

### Langkah 7: Buka `main.dart`
Ketik kode impor file ini pada file `main.dart`:
```dart
import 'stream.dart';
```

### Langkah 8: Tambah variabel
Ketik dua properti ini di dalam class `_StreamHomePageState`<br>
<img src="https://jti-polinema.github.io/flutter-codelab/13-state-streams-bloc/img//6b7a118ed08dc151.png">

### Langkah 9: Tambah method `changeColor()`
Tetap di file `main`, ketik kode seperti berikut:<br>
<img src="https://jti-polinema.github.io/flutter-codelab/13-state-streams-bloc/img//2fa890309883b601.png">

### Langkah 10: Lakukan override `initState()`
Ketik kode berikut:<br>
<img src="https://jti-polinema.github.io/flutter-codelab/13-state-streams-bloc/img//5c0e083382c433ef.png">

### Langkah 11: Ubah isi `Scaffold()`
Sesuaikan kode seperti berikut.<br>
<img src="https://jti-polinema.github.io/flutter-codelab/13-state-streams-bloc/img//eeea38d307556be2.png">

### Langkah 12: Run
Lakukan running pada aplikasi Flutter Anda, maka akan terlihat berubah warna background setiap detik.<br>
<img src="https://jti-polinema.github.io/flutter-codelab/13-state-streams-bloc/img//eeea38d307556be2.png">

> **Soal 4**
> - Capture hasil praktikum Anda berupa GIF dan lampirkan di `README`.
> - Lakukan commit hasil jawaban Soal 4 dengan pesan "W12: Jawaban Soal 4"

### Langkah 13: Ganti isi method `changeColor()`
Anda boleh comment atau hapus kode sebelumnya, lalu ketik kode seperti berikut.<br>
<img src="https://jti-polinema.github.io/flutter-codelab/13-state-streams-bloc/img//cad95b6e412a09ea.png">

> **Soal 5**
> - Jelaskan perbedaan menggunakan `listen` dan `await for` (langkah 9)!
> - Lakukan commit hasil jawaban Soal 5 dengan pesan "W12: Jawaban Soal 5"

> **Catatan**: Stream di Flutter memiliki fitur yang powerful untuk menangani data secara async. Stream dapat dimanfaatkan pada skenario dunia nyata seperti real-time messaging, unggah dan unduh file, tracking lokasi user, bekerja dengan data sensor IoT, dan lain sebagainya.

--- 

This follows your instructions and uses images hosted on the jti-polinema site. Let me know if you'd like further adjustments!
# Praktikum 2: Stream Controllers dan Sinks

`StreamControllers` akan membuat jembatan antara `Stream` dan `Sink`. `Stream` berisi data secara sekuensial yang dapat diterima oleh subscriber manapun, sedangkan `Sink` digunakan untuk mengisi (injeksi) data.

Secara sederhana, StreamControllers merupakan stream management. Ia akan otomatis membuat stream dan sink serta beberapa method untuk melakukan kontrol terhadap event dan fitur-fitur yang ada di dalamnya.

Anda dapat membayangkan stream sebagai pipa air yang mengalir searah, dari salah satu ujung Anda dapat mengisi data dan dari ujung lain data itu keluar. Anda dapat melihat konsep stream pada gambar diagram berikut ini.

<img src="https://jti-polinema.github.io/flutter-codelab/13-state-streams-bloc/img//34169bce391f6f.png">

Di Flutter, Anda dapat menggunakan `StreamController` untuk mengontrol aliran data `stream`. Sebuah `StreamController` memiliki sebuah properti bernama `sink` yang berguna untuk insert data, sedangkan properti `stream` berguna untuk menerima atau keluarnya data dari `StreamController` tersebut.

Setelah Anda menyelesaikan praktikum 1, Anda dapat melanjutkan praktikum 2 ini. Selesaikan langkah-langkah praktikum berikut ini menggunakan editor Visual Studio Code (VS Code), Android Studio, atau code editor lain kesukaan Anda. Jawablah di laporan praktikum Anda pada setiap soal yang ada di beberapa langkah praktikum ini.

> **Perhatian:** Diasumsikan Anda telah berhasil menyelesaikan Praktikum 1.

Pada codelab ini, kita akan menambah kode dari aplikasi **stream** di praktikum sebelumnya.

### Langkah 1: Buka file `stream.dart`
Lakukan impor dengan mengetik kode ini.

```dart
import 'dart:async';
```

### Langkah 2: Tambah `class NumberStream`
Tetap di file `stream.dart`, tambah class baru seperti berikut.

<img src="https://jti-polinema.github.io/flutter-codelab/13-state-streams-bloc/img//840e1f465b0db416.png">

### Langkah 3: Tambah `StreamController`
Di dalam `class NumberStream` buatlah variabel seperti berikut.
```dart
final StreamController<int> controller = StreamController<int>();
```

### Langkah 4: Tambah method `addNumberToSink`
Tetap di `class NumberStream`, buatlah method ini.

<img src="https://jti-polinema.github.io/flutter-codelab/13-state-streams-bloc/img//3602f50e8f6264d.png">

### Langkah 5: Tambah method `close()`
Tambahkan kode berikut.

<img src="https://jti-polinema.github.io/flutter-codelab/13-state-streams-bloc/img//c7da255974c6058a.png">

### Langkah 6: Buka `main.dart`
Ketik kode import seperti berikut

<img src="https://jti-polinema.github.io/flutter-codelab/13-state-streams-bloc/img//25d8c5dc2ae7200b.png">

### Langkah 7: Tambah variabel
Di dalam `class _StreamHomePageState`, ketik variabel berikut

<img src="https://jti-polinema.github.io/flutter-codelab/13-state-streams-bloc/img//17d0a4dd4d52707.png">

### Langkah 8: Edit `initState()`
<img src="https://jti-polinema.github.io/flutter-codelab/13-state-streams-bloc/img//ad0ce0258ad8b488.png">

### Langkah 9: Edit `dispose()`
<img src="https://jti-polinema.github.io/flutter-codelab/13-state-streams-bloc/img//7c29c662b5a593ea.png">

### Langkah 10: Tambah method `addRandomNumber()`
Tambahkan kode berikut.

```dart
void addRandomNumber() {
  Random random = Random();
  int myNum = random.nextInt(10);
  numberStream.addNumberToSink(myNum);
}
```

### Langkah 11: Edit method `build()`
<img src="https://jti-polinema.github.io/flutter-codelab/13-state-streams-bloc/img//2400befe50948646.png">

### Langkah 12: Run
Lakukan running pada aplikasi Flutter Anda, maka akan terlihat seperti gambar berikut.

<img src="https://jti-polinema.github.io/flutter-codelab/13-state-streams-bloc/img//2615c42c4b04287f.png">

> **Soal 6**
> - Jelaskan maksud kode langkah 8 dan 10 tersebut!
> - Capture hasil praktikum Anda berupa GIF dan lampirkan di README.
> - Lalu lakukan commit dengan pesan "**W12: Jawaban Soal 6**".

### Langkah 13: Buka `stream.dart`
Tambahkan method berikut ini.

<img src="https://jti-polinema.github.io/flutter-codelab/13-state-streams-bloc/img//a1377abf68eff433.png">

### Langkah 14: Buka `main.dart`
Tambahkan method `onError` di dalam `class StreamHomePageState` pada method `listen` di fungsi `initState()` seperti berikut ini.

<img src="https://jti-polinema.github.io/flutter-codelab/13-state-streams-bloc/img//375aa77837220363.png">

### Langkah 15: Edit method `addRandomNumber()`
Lakukan *comment* pada dua baris kode berikut, lalu ketik kode seperti berikut ini.

<img src="https://jti-polinema.github.io/flutter-codelab/13-state-streams-bloc/img//3ad742a1b10700db.png">

> **Soal 7**
> - Jelaskan maksud kode langkah 13 sampai 15 tersebut!
> - Kembalikan kode seperti semula pada Langkah 15, comment `addError()` agar Anda dapat melanjutkan ke praktikum 3 berikutnya.
> - Lalu lakukan commit dengan pesan "**W12: Jawaban Soal 7**".


Berikut adalah panduan praktikum dalam format Markdown untuk Praktikum 3: Injeksi data ke streams.
<br><br>

# Praktikum 3: Injeksi Data ke Streams

Skenario yang umum dilakukan adalah melakukan manipulasi atau transformasi data stream sebelum sampai pada UI end user. Hal ini sangat berguna ketika Anda perlu melakukan filter data berdasarkan kondisi tertentu, memvalidasi data, memodifikasinya, atau menjalankan proses lain yang memicu beberapa output baru. Contohnya melakukan konversi angka ke string, melakukan perhitungan, atau menghilangkan data yang berulang.

Pada praktikum ini, Anda akan menggunakan `StreamTransformers` dalam `stream` untuk melakukan operasi `map` dan filter data.

Setelah Anda menyelesaikan praktikum 2, Anda dapat melanjutkan praktikum 3 ini. Selesaikan langkah-langkah praktikum berikut ini menggunakan editor Visual Studio Code (VS Code), Android Studio, atau editor lain kesukaan Anda. Jawablah di laporan praktikum Anda pada setiap soal yang ada di beberapa langkah praktikum ini.

> **Perhatian:** Diasumsikan Anda telah berhasil menyelesaikan Praktikum 2.

### Langkah 1: Buka `main.dart`
Tambahkan variabel baru di dalam `class _StreamHomePageState` seperti berikut.

<img src="https://jti-polinema.github.io/flutter-codelab/13-state-streams-bloc/img//a39393768efc5b8.png">

### Langkah 2: Tambahkan kode ini di `initState`
Edit bagian `initState` dengan menambahkan kode berikut.

<img src="https://jti-polinema.github.io/flutter-codelab/13-state-streams-bloc/img//83e8106b154a3233.png">

### Langkah 3: Tetap di `initState`
Lakukan edit tambahan pada `initState` seperti kode berikut.

<img src="https://jti-polinema.github.io/flutter-codelab/13-state-streams-bloc/img//72d67ab1adaa9e17.png">

### Langkah 4: Run
Terakhir, jalankan aplikasi dengan menekan **F5** atau **run**. Jika aplikasi sudah berjalan, lakukan **hot restart**. Maka hasilnya akan terlihat seperti gambar berikut ini dengan tampilan angka dari 0 hingga 90.

<img src="https://jti-polinema.github.io/flutter-codelab/13-state-streams-bloc/img//c599643509de04b3.png">

> **Soal 8**
> - Jelaskan maksud kode langkah 1-3 tersebut!
> - Capture hasil praktikum Anda berupa GIF dan lampirkan di README.
> - Lalu lakukan commit dengan pesan "**W12: Jawaban Soal 8**".
<br><br>

# Praktikum 4: Subscribe ke Stream Events

Dari praktikum sebelumnya, Anda telah menggunakan method listen mendapatkan nilai dari stream. Ini akan menghasilkan sebuah Subscription. Subscription berisi method yang dapat digunakan untuk melakukan listen pada suatu event dari stream secara terstruktur.<p>

Pada praktikum 4 ini, kita akan gunakan Subscription untuk menangani event dan error dengan teknik praktik baik (best practice), dan menutup Subscription tersebut.<p>

Setelah Anda menyelesaikan praktikum 3, Anda dapat melanjutkan praktikum 4 ini. Selesaikan langkah-langkah praktikum berikut ini menggunakan editor Visual Studio Code (VS Code) atau Android Studio atau code editor lain kesukaan Anda. Jawablah di laporan praktikum Anda pada setiap soal yang ada di beberapa langkah praktikum ini.<p>

> **Perhatian:** Diasumsikan Anda telah menyelesaikan Praktikum 3.

### Langkah 1: Tambah Variabel
Tambahkan variabel berikut di dalam `class _StreamHomePageState`.

<img src="https://jti-polinema.github.io/flutter-codelab/13-state-streams-bloc/img//7c8447240f68726b.png">

### Langkah 2: Edit `initState()`
Edit bagian `initState` dengan menambahkan kode berikut.

<img src="https://jti-polinema.github.io/flutter-codelab/13-state-streams-bloc/img//84d63a39f3ec870e.png">

### Langkah 3: Tetap di `initState()`
Tambahkan kode berikut di `initState`.

<img src="https://jti-polinema.github.io/flutter-codelab/13-state-streams-bloc/img//78200f76243befdb.png">

### Langkah 4: Tambah Properti `onDone()`
Tambahkan kode berikut di bawah `onError`.

<img src="https://jti-polinema.github.io/flutter-codelab/13-state-streams-bloc/img//77ab03fde9b5ed8d.png">

### Langkah 5: Tambah Method Baru
Tambahkan method baru berikut di dalam `class _StreamHomePageState`.

<img src="https://jti-polinema.github.io/flutter-codelab/13-state-streams-bloc/img//de1e277fdf84eed4.png">

### Langkah 6: Pindah ke Method `dispose()`
Jika `dispose()` belum ada, buat method ini dan tambahkan kode berikut di dalamnya.

<img src="https://jti-polinema.github.io/flutter-codelab/13-state-streams-bloc/img//5dd0b3a1fe7f836d.png">

### Langkah 7: Pindah ke Method `build()`
Tambahkan button kedua di method `build()` dengan kode berikut.

<img src="https://jti-polinema.github.io/flutter-codelab/13-state-streams-bloc/img//d5e80fb3e54f20ed.png">

### Langkah 8: Edit Method `addRandomNumber()`
Edit method `addRandomNumber()` seperti kode berikut.

<img src="https://jti-polinema.github.io/flutter-codelab/13-state-streams-bloc/img//23ce6aa2bbe515ae.png">

### Langkah 9: Run
Jalankan aplikasi, Anda akan melihat dua button seperti gambar berikut.

<img src="https://jti-polinema.github.io/flutter-codelab/13-state-streams-bloc/img//5e23ead7712e4908.png">

### Langkah 10: Tekan Button ‘Stop Subscription'
Saat Anda menekan button ini, akan muncul pesan di Debug Console seperti berikut.

<img src="https://jti-polinema.github.io/flutter-codelab/13-state-streams-bloc/img//b051d83d7e5d963a.png">

> **Soal 9**
> - Jelaskan maksud kode langkah 2, 6, dan 8 tersebut!
> - Capture hasil praktikum Anda berupa GIF dan lampirkan di README.
> - Lalu lakukan commit dengan pesan "**W12: Jawaban Soal 9**".

<br><br>

# Praktikum 5: Multiple Stream Subscriptions

Secara default, stream hanya bisa digunakan untuk satu subscription. Jika Anda mencoba untuk melakukan subscription yang sama lebih dari satu, maka akan terjadi error. Untuk menangani hal itu, tersedia broadcast stream yang dapat digunakan untuk multiple subscriptions. Pada praktikum ini, Anda akan mencoba untuk melakukan multiple stream subscriptions.<p>

Setelah Anda menyelesaikan praktikum 4, Anda dapat melanjutkan praktikum 5 ini. Selesaikan langkah-langkah praktikum berikut ini menggunakan editor Visual Studio Code (VS Code) atau Android Studio atau code editor lain kesukaan Anda. Jawablah di laporan praktikum Anda pada setiap soal yang ada di beberapa langkah praktikum ini.<p>

> **Perhatian:** Diasumsikan Anda telah menyelesaikan Praktikum 4.

### Langkah 1: Buka file `main.dart`
Tambahkan variabel berikut di dalam `class _StreamHomePageState`.

<img src="https://jti-polinema.github.io/flutter-codelab/13-state-streams-bloc/img//eada5b3aec216c00.png">

### Langkah 2: Edit `initState()`
Tambahkan kode berikut di `initState`.

<img src="https://jti-polinema.github.io/flutter-codelab/13-state-streams-bloc/img//b952c35d1b3c5514.png">

### Langkah 3: Run
Jalankan aplikasi, dan akan muncul error seperti berikut.

<img src="https://jti-polinema.github.io/flutter-codelab/13-state-streams-bloc/img//f4b1267b6e8dd7a8.png">

> **Soal 10**: Jelaskan mengapa error tersebut bisa terjadi?

### Langkah 4: Set Broadcast Stream
Untuk memungkinkan multiple subscriptions, edit `initState` agar stream menjadi broadcast seperti pada kode berikut.

<img src="https://jti-polinema.github.io/flutter-codelab/13-state-streams-bloc/img//60e78d10901303ae.png">

### Langkah 5: Edit Method `build()`
Tambahkan kode berikut pada method `build()` untuk menampilkan data dari kedua subscriptions.

<img src="https://jti-polinema.github.io/flutter-codelab/13-state-streams-bloc/img//5ebb31e63b3632c7.png">

### Langkah 6: Run
Tekan tombol **New Random Number** beberapa kali. Angka yang ditampilkan akan bertambah dua kali untuk setiap subscription, seperti pada gambar berikut.

<img src="https://jti-polinema.github.io/flutter-codelab/13-state-streams-bloc/img//bbd6d5897fbcd346.png">

> **Soal 11**
> - Jelaskan mengapa angka terus bertambah dua kali untuk setiap subscription.
> - Capture hasil praktikum Anda dalam bentuk GIF dan lampirkan di README.
> - Lalu lakukan commit dengan pesan "**W12: Jawaban Soal 10,11**".
<br><br>

# Praktikum 6: StreamBuilder

StreamBuilder adalah sebuah widget untuk melakukan listen terhadap event dari stream. Ketika sebuah event terkirim, maka akan dibangun ulang semua turunannya. Seperti halnya widget FutureBuilder pada pertemuan pekan lalu, StreamBuilder berguna untuk membangun UI secara reaktif yang diperbarui setiap data baru tersedia.<p>

Setelah Anda menyelesaikan praktikum 5, Anda dapat melanjutkan praktikum 6 ini. Selesaikan langkah-langkah praktikum berikut ini menggunakan editor Visual Studio Code (VS Code) atau Android Studio atau code editor lain kesukaan Anda. Jawablah di laporan praktikum Anda pada setiap soal yang ada di beberapa langkah praktikum ini.<p>

> **Perhatian:** Diasumsikan Anda telah menyelesaikan Praktikum 5.

### Langkah 1: Buat Project Baru
Buat project Flutter baru dengan nama `streambuilder_nama` (gunakan nama panggilan Anda) di folder `week-13/src/` pada repository GitHub Anda.

### Langkah 2: Buat file `stream.dart`
Tambahkan kode berikut di dalam file `stream.dart`.

<img src="https://jti-polinema.github.io/flutter-codelab/13-state-streams-bloc/img//c952cad89fb49540.png">

### Langkah 3: Tambah Stream Controller
Tambahkan kode berikut di `stream.dart` untuk membuat stream dan mengirim data secara periodik.

<img src="https://jti-polinema.github.io/flutter-codelab/13-state-streams-bloc/img//4ecb0d492ba54d33.png">

### Langkah 4: Edit `main.dart`
Tambahkan kode berikut di `main.dart` untuk menggunakan `StreamBuilder` dalam UI aplikasi.

<img src="(https://jti-polinema.github.io/flutter-codelab/13-state-streams-bloc/img//9349f18826354e82.png)">
<img src="(https://jti-polinema.github.io/flutter-codelab/13-state-streams-bloc/img//e8626e45db22c790.png)">
<img src="(https://jti-polinema.github.io/flutter-codelab/13-state-streams-bloc/img//deb59a89025d3352.png)">

### Langkah 5: Tambah Variabel
Tambahkan variabel berikut di dalam `class _StreamHomePageState`.

<img src="https://jti-polinema.github.io/flutter-codelab/13-state-streams-bloc/img//f2ae28da6ce5365a.png">

### Langkah 6: Edit `initState()`
Tambahkan kode berikut di dalam `initState()` untuk menginisialisasi stream controller.

<img src="https://jti-polinema.github.io/flutter-codelab/13-state-streams-bloc/img//7b2ef7e0e992ad21.png">

### Langkah 7: Edit Method `build()`
Tambahkan kode berikut pada method `build()` untuk menampilkan data dari stream menggunakan `StreamBuilder`.

<img src="https://jti-polinema.github.io/flutter-codelab/13-state-streams-bloc/img//cc6f77aff0be2685.png">
<img src="https://jti-polinema.github.io/flutter-codelab/13-state-streams-bloc/img//89827c57e6cd573d.png">

### Langkah 8: Run
Jalankan aplikasi, dan setiap detik akan muncul angka baru pada tampilan seperti berikut.

<img src="https://jti-polinema.github.io/flutter-codelab/13-state-streams-bloc/img//7ac5b7804a489a0e.png">

> **Soal 12**
> - Jelaskan maksud kode pada langkah 3 dan 7.
> - Capture hasil praktikum Anda dalam bentuk GIF dan lampirkan di README.
> - Lakukan commit dengan pesan "**W12: Jawaban Soal 12**".

<br><br>

# Praktikum 7: BLoC Pattern

Ketika menggunakan pola BLoC, maka segalanya merupakan stream event. BLoC atau Business Logic Component adalah lapisan antara semua sumber data dan UI yang mengonsumsi data itu. Contohnya seperti sumber data dari HTTP layanan web servis atau JSON dari sebuah basis data.<p>

Sebuah BLoC menerima stream data dari sumbernya, proses itu membutuhkan logika bisnis Anda, dan return stream data ke subscriber-nya. Perhatikan diagram pola kerja BLoC berikut ini.<p>
<img src="https://jti-polinema.github.io/flutter-codelab/13-state-streams-bloc/img//228c7b30c7e22075.png">

Alasan utama menggunakan BLoC adalah memisahkan logika bisnis aplikasi dengan presentasi UI pada widget, terutama akan sangat berguna ketika aplikasi Anda mulai semakin kompleks dan membutuhkan akses state di berbagai tempat. Hal ini akan membuat semakin mudah dalam menggunakan kode Anda, pada beberapa bagian di aplikasi atau bahkan berbeda aplikasi. Selain itu, BLoC secara independen berdiri sendiri dengan UI, sehingga sangat mudah dilakukan isolasi dalam proses testing.<p>

Pada praktikum codelab ini, Anda akan membuat aplikasi sederhana menggunakan BLoC, namun Anda dapat dengan mudah mengembangkannya untuk aplikasi yang lebih besar ruang lingkupnya.<p>

Setelah Anda menyelesaikan praktikum 6, Anda dapat melanjutkan praktikum 7 ini. Selesaikan langkah-langkah praktikum berikut ini menggunakan editor Visual Studio Code (VS Code) atau Android Studio atau code editor lain kesukaan Anda. Jawablah di laporan praktikum Anda pada setiap soal yang ada di beberapa langkah praktikum ini.<p>

> **Perhatian:** Diasumsikan Anda telah menyelesaikan Praktikum 6.

### Langkah 1: Buat Project Baru
Buat project Flutter baru dengan nama `bloc_random_nama` (gunakan nama panggilan Anda) di folder `week-13/src/` pada repository GitHub Anda. Lalu buat file baru di folder `lib` dengan nama `random_bloc.dart`.

### Langkah 2: Tambah Kode Import
Tambahkan kode berikut di dalam file `random_bloc.dart`.

<img src="https://jti-polinema.github.io/flutter-codelab/13-state-streams-bloc/img//3e31e44d64abed6c.png">

### Langkah 3: Buat Class `RandomNumberBloc`
Buat class `RandomNumberBloc()` di dalam file `random_bloc.dart`.

<img src="https://jti-polinema.github.io/flutter-codelab/13-state-streams-bloc/img//f8279786361eafe6.png">

### Langkah 4: Buat Variabel StreamController
Di dalam `class RandomNumberBloc()`, tambahkan variabel `StreamController` berikut.

<img src="https://jti-polinema.github.io/flutter-codelab/13-state-streams-bloc/img//49848a01c3a9b3e7.png">

### Langkah 5: Buat Constructor
Tambahkan constructor untuk menginisialisasi `StreamController`.

<img src="https://jti-polinema.github.io/flutter-codelab/13-state-streams-bloc/img//115b5d60e44a90d4.png">

### Langkah 6: Buat Method `dispose()`
Tambahkan method `dispose()` untuk membersihkan `StreamController`.

<img src="https://jti-polinema.github.io/flutter-codelab/13-state-streams-bloc/img//9544226586ee483c.png">

### Langkah 7: Edit `main.dart`
Tambahkan kode berikut di `main.dart` untuk memanggil `RandomNumberBloc` di aplikasi.

<img src="https://jti-polinema.github.io/flutter-codelab/13-state-streams-bloc/img//8f8f9a0717921287.png">

### Langkah 8: Buat File `random_screen.dart`
Di dalam folder `lib`, buatlah file baru bernama `random_screen.dart`.

### Langkah 9: Tambah Kode Import di `random_screen.dart`
Tambahkan import material dan `random_bloc.dart`.

<img src="https://jti-polinema.github.io/flutter-codelab/13-state-streams-bloc/img//24057319fd50d6ec.png">

### Langkah 10: Buat `StatefulWidget` RandomScreen
Buat class `RandomScreen` di `random_screen.dart`.

### Langkah 11: Tambah Variabel
Tambahkan variabel berikut di dalam `class _RandomScreenState`.

<img src="https://jti-polinema.github.io/flutter-codelab/13-state-streams-bloc/img//dcf513303d2047bd.png">

### Langkah 12: Buat Method `dispose()`
Tambahkan method `dispose()` untuk membersihkan controller.

<img src="https://jti-polinema.github.io/flutter-codelab/13-state-streams-bloc/img//436b00e0493c597f.png">

### Langkah 13: Edit Method `build()`
Tambahkan kode ini di dalam `class _RandomScreenState`.

<img src="https://jti-polinema.github.io/flutter-codelab/13-state-streams-bloc/img//5703e6af910526cd.png">

### Langkah 14: Run
Jalankan aplikasi. Setiap kali menekan tombol **FloatingActionButton**, angka acak antara 0 sampai 9 akan tampil.

> **Soal 13**
> - Jelaskan maksud praktikum ini dan letak konsep pola BLoC-nya.
> - Capture hasil praktikum Anda dalam bentuk GIF dan lampirkan di README.
> - Lakukan commit dengan pesan "**W12: Jawaban Soal 13**".


