**Laporan Praktikum**
# **Pertemuan 12**
### **Pemrograman Asynchronous**
------

### **Data Mahasiswa**

><p>Nama : Fanesabhirawaning Sulistyo<p>
>NIM : 2241720027<p>
>Kelas : 3C<p>
>Prodi : D-IV Teknik Informatika<p>
>Jurusan : Teknologi Informasi<p>

<br>

---------
<br>


# Praktikum 1: Mengunduh Data dari Web Service (API)

Selesaikan langkah-langkah praktikum berikut ini menggunakan editor Visual Studio Code (VS Code) atau Android Studio atau code editor lain kesukaan Anda. Jawablah di laporan praktikum Anda pada setiap soal yang ada di beberapa langkah praktikum ini.<p>

> Perhatian: Diasumsikan Anda telah berhasil melakukan setup environment Flutter SDK, VS Code, Flutter Plugin, dan Android SDK pada pertemuan pertama.<p>

### Langkah 1: Buat Project Baru

Buatlah sebuah project flutter baru dengan nama books di folder src week-12 repository GitHub Anda.<p>

Kemudian Tambahkan dependensi http dengan mengetik perintah berikut di terminal.<p>

```dart
flutter pub add http
```

### Langkah 2: Cek file pubspec.yaml

Jika berhasil install plugin, pastikan plugin http telah ada di file pubspec ini seperti berikut.<p>

```dart
dependencies:
  flutter:
    sdk: flutter
  http: ^1.1.0
```
Jika Anda menggunakan macOS, Anda harus mengaktifkan fitur networking pada file macos/Runner/DebugProfile.entitlements dan macos/Runner/Release.entitlements dengan menambahkan kode berikut:<p>

<img src="https://jti-polinema.github.io/flutter-codelab/12-async/img//2ca9ef3a2e1c08ba.png">

### Langkah 3: Buka file main.dart

> Soal 1<p>
> Tambahkan nama panggilan Anda pada title app sebagai identitas hasil pekerjaan Anda.

<img src="https://jti-polinema.github.io/flutter-codelab/12-async/img//2d4f462d1686d7d.png">

> Catatan:<p>
> Tidak ada yang spesial dengan kode di main.dart tersebut. Perlu diperhatikan di kode tersebut terdapat widget CircularProgressIndicator yang akan menampilkan animasi berputar secara terus-menerus, itu pertanda bagus bahwa aplikasi Anda responsif (tidak freeze/lag). Ketika animasi terlihat berhenti, itu berarti UI menunggu proses lain sampai selesai.<p>

**Jawab**
```dart
@override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo Fanesa',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const FuturePage(),
    );
  }

 appBar: AppBar(
        title: const Text('Back from the Future Fanesa'),
      ),
```

<p align="left">
    <img src="img/image2.png" width="380" height="550">
    </p>

### Langkah 4: Tambah method getData()

Tambahkan method ini ke dalam class \_FuturePageState yang berguna untuk mengambil data dari API Google Books.<p>

<img src="https://jti-polinema.github.io/flutter-codelab/12-async/img//6d9f8a8143fc6e5e.png">

> Soal 2
> - Carilah judul buku favorit Anda di Google Books, lalu ganti ID buku pada variabel path di kode tersebut. Caranya ambil di URL browser Anda seperti gambar berikut ini.<p>
<img src="https://jti-polinema.github.io/flutter-codelab/12-async/img//29d0179018edd8d4.png">

> - Kemudian cobalah akses di browser URI tersebut dengan lengkap seperti ini. Jika menampilkan data JSON, maka Anda telah berhasil. Lakukan capture milik Anda dan tulis di README pada laporan praktikum. Lalu lakukan commit dengan pesan "W12: Soal 2".<p>

<img src="https://jti-polinema.github.io/flutter-codelab/12-async/img//d441815f1bdf8e8.png"><p>
<br>
> **Jawab**
> <img src="img/image1.png">

### Langkah 5: Tambah kode di ElevatedButton

Tambahkan kode pada onPressed di ElevatedButton seperti berikut.<p>

<img src="https://jti-polinema.github.io/flutter-codelab/12-async/img//857bcdaae7213edf.png">

Lakukan run aplikasi Flutter Anda. Anda akan melihat tampilan akhir seperti gambar berikut. Jika masih terdapat error, silakan diperbaiki hingga bisa running.<p>

> Soal 3
> - Jelaskan maksud kode langkah 5 tersebut terkait substring dan catchError!
> - Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 3".

<img src="https://jti-polinema.github.io/flutter-codelab/12-async/img//6533382f0798e097.png">