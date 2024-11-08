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

**Jawab**
> - **Jelaskan maksud kode langkah 5 tersebut terkait substring dan catchError!**<p>
> substring() adalah metode untuk mengambil substring dari string. Substring adalah bagian dari string yang dimulai dari indeks tertentu dan berakhir pada indeks tertentu. Metode substring() menerima dua parameter, yaitu indeks awal dan indeks akhir. Indeks awal adalah indeks karakter pertama yang ingin diambil, dan indeks akhir adalah indeks karakter terakhir yang ingin diambil. catchError() adalah metode untuk menangani kesalahan. Metode catchError() menerima satu parameter, yaitu fungsi yang akan dijalankan jika terjadi kesalahan. Fungsi tersebut akan menerima objek kesalahan sebagai parameter. Kode di atas menggunakan substring() untuk mengambil 450 karakter pertama dari respons API. Jika terjadi kesalahan saat mengambil respons API, maka kode tersebut akan menggunakan catchError() untuk menampilkan pesan kesalahan "An error occurred".<p>
> - **Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 3".**<p>
<p align="left">
<img src="img/soal3.gif">
</p>

<br>

# Praktikum 2: Menggunakan await/async untuk menghindari callbacks<p>

Ada alternatif penggunaan Future yang lebih clean, mudah dibaca dan dirawat, yaitu pola async/await. Intinya pada dua kata kunci ini:<p>

- async digunakan untuk menandai suatu method sebagai asynchronous dan itu harus ditambahkan di depan kode function.<p>
- await digunakan untuk memerintahkan menunggu sampai eksekusi suatu function itu selesai dan mengembalikan sebuah value. Untuk then bisa digunakan pada jenis method apapun, sedangkan await hanya bekerja di dalam method async.<p>
  
Berikut ini contoh kode perbedaan Future dengan then dan async/await.<p>
<img src="https://jti-polinema.github.io/flutter-codelab/12-async/img//7d1cc43f658e2318.png"><p>

Setelah Anda menyelesaikan praktikum 1, Anda dapat melanjutkan praktikum 2 ini. Selesaikan langkah-langkah praktikum berikut ini menggunakan editor Visual Studio Code (VS Code) atau Android Studio atau code editor lain kesukaan Anda. Jawablah di laporan praktikum Anda pada setiap soal yang ada di beberapa langkah praktikum ini.<p>

> Perhatian: Diasumsikan Anda telah berhasil menyelesaikan Praktikum 1.<p>

Pada codelab ini, kita akan menambah kode dari aplikasi books di praktikum sebelumnya.<p>

### Langkah 1: Buka file main.dart
Tambahkan tiga method berisi kode seperti berikut di dalam class _FuturePageState.<p>
```dart
Future<int> returnOneAsync() async {
  await Future.delayed(const Duration(seconds: 3));
  return 1;
}

Future<int> returnTwoAsync() async {
  await Future.delayed(const Duration(seconds: 3));
  return 2;
}

Future<int> returnThreeAsync() async {
  await Future.delayed(const Duration(seconds: 3));
  return 3;
}
```

### Langkah 2: Tambah method count()
Lalu tambahkan lagi method ini di bawah ketiga method sebelumnya.<p>
<img src="https://jti-polinema.github.io/flutter-codelab/12-async/img//5b83c8553b235a3a.png">

### Langkah 3: Panggil count()
Lakukan comment kode sebelumnya, ubah isi kode onPressed() menjadi seperti berikut.<p>
<img src="https://jti-polinema.github.io/flutter-codelab/12-async/img//e447e023789e40.png">


### Langkah 4: Run
Akhirnya, run atau tekan F5 jika aplikasi belum running. Maka Anda akan melihat seperti gambar berikut, hasil angka 6 akan tampil setelah delay 9 detik.<p>
<img src="https://jti-polinema.github.io/flutter-codelab/12-async/img//c031719fe1ee4340.png">

> Soal 4
- Jelaskan maksud kode langkah 1 dan 2 tersebut!
- Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 4".
  
<br>

> **Jawab**
- **Jelaskan maksud kode langkah 1 dan 2 tersebut!**

>Langkah 1
>Kode di atas adalah kode Dart yang terdiri dari tiga fungsi asynchronous, yaitu returnOneAsync(), returnTwoAsync(), dan returnThreeAsync(). Ketiga fungsi ini mengembalikan nilai int dan menggunakan Future.delayed() untuk menunda eksekusi selama 3 detik.
>Berikut adalah penjelasan masing-masing fungsi:
>- returnOneAsync()
>Fungsi ini mengembalikan nilai 1 setelah 3 detik.
>- returnTwoAsync()
>Fungsi ini mengembalikan nilai 2 setelah 3 detik.
>- returnThreeAsync()
>Fungsi ini mengembalikan nilai 3 setelah 3 detik.

>Langkah 2
>Kode di atas adalah sebuah fungsi asynchronous bernama count() yang digunakan untuk menghitung jumlah dari tiga fungsi asynchronous lainnya, yaitu returnOneAsync(), returnTwoAsync(), dan returnThreeAsync(). Fungsi count() ini mengembalikan Future, yang berarti bahwa eksekusinya tidak akan memblokir kode lainnya.

- **Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 4".**
<p align="left">
<img src="img/soal4.gif">
</p>

<br>

# Praktikum 3: Menggunakan Completer di Future
Menggunakan Future dengan then, catchError, async, dan await mungkin sudah cukup untuk banyak kasus, tetapi ada alternatif melakukan operasi async di Dart dan Flutter yaitu dengan class Completer.<p>

Completer membuat object Future yang mana Anda dapat menyelesaikannya nanti (late) dengan return sebuah value atau error.<p>

Setelah Anda menyelesaikan praktikum 2, Anda dapat melanjutkan praktikum 3 ini. Selesaikan langkah-langkah praktikum berikut ini menggunakan editor Visual Studio Code (VS Code) atau Android Studio atau code editor lain kesukaan Anda. Jawablah di laporan praktikum Anda pada setiap soal yang ada di beberapa langkah praktikum ini.<p>

> Perhatian: Diasumsikan Anda telah berhasil menyelesaikan Praktikum 2.

### Langkah 1: Buka main.dart
Pastikan telah impor package async berikut.<p>
```dart
import 'package:async/async.dart';
```

### Langkah 2: Tambahkan variabel dan method
Tambahkan variabel late dan method di class _FuturePageState seperti ini.<p>
```dart
late Completer completer;

Future getNumber() {
  completer = Completer<int>();
  calculate();
  return completer.future;
}

Future calculate() async {
  await Future.delayed(const Duration(seconds : 5));
  completer.complete(42);
}
```

### Langkah 3: Ganti isi kode onPressed()
Tambahkan kode berikut pada fungsi onPressed(). Kode sebelumnya bisa Anda comment.<p>
<img src="https://jti-polinema.github.io/flutter-codelab/12-async/img//bdb48de3fa852295.png">

### Langkah 4:
Terakhir, run atau tekan F5 untuk melihat hasilnya jika memang belum running. Bisa juga lakukan hot restart jika aplikasi sudah running. Maka hasilnya akan seperti gambar berikut ini. Setelah 5 detik, maka angka 42 akan tampil.<p>
<img src="https://jti-polinema.github.io/flutter-codelab/12-async/img//4a03c022427c484e.png">


>**Soal 5**
- Jelaskan maksud kode langkah 2 tersebut!
- Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 5".
<br>

**Jawab**
>Pada langkah 2, kita menambahkan variabel completer dan method getNumber() dan calculate() di class _FuturePageState.
>1. Variabel completer
>Variabel completer adalah variabel late dari tipe Completer<int>. Variabel ini digunakan untuk menyimpan hasil dari perhitungan angka 42.
>2. Method getNumber()
>Method getNumber() mengembalikan nilai dari variabel completer. Method ini memiliki dua langkah:
>a. Inisialisasi variabel completer dengan nilai baru.
>b. Memanggil method calculate() untuk menghitung angka 42.
>3. Method calculate()
>Method calculate() menggunakan Future.delayed() untuk menunggu 5 detik sebelum menyelesaikan perhitungan angka 42. Setelah 5 detik, method ini akan memanggil method completer.complete() untuk menyelesaikan perhitungan dan mengembalikan nilai 42 ke variabel completer
<br>

>Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 5"

<img src="img/soal5,6.gif">


### Langkah 5: Ganti method calculate()
Gantilah isi code method calculate() seperti kode berikut, atau Anda dapat membuat calculate2()<p>
<img src="https://jti-polinema.github.io/flutter-codelab/12-async/img//6631dbe432b45450.png">


### Langkah 6: Pindah ke onPressed()
Ganti menjadi kode seperti berikut.<p>
```dart
getNumber().then((value) {
  setState(() {
    result = value.toString();
  });
}).catchError((e) {
  result = 'An error occurred';
});
```

>Soal 6
- Jelaskan maksud perbedaan kode langkah 2 dengan langkah 5-6 tersebut!
- Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 6".

**Jawab**
>Langkah 5<p>
>Pada langkah 5, kita mengganti isi dari method calculate(). Method calculate() sebelumnya menggunakan await Future.delayed(const Duration(seconds: 5)); untuk menunggu 5 detik sebelum menyelesaikan perhitungan angka 42. Namun, method ini tidak menangani kesalahan yang mungkin terjadi saat menunggu 5 detik.<p>
>Kode ini menggunakan try/catch untuk menangani kesalahan yang mungkin terjadi saat menunggu 5 detik. Jika tidak terjadi kesalahan, maka method ini akan memanggil method completer.complete() untuk menyelesaikan perhitungan dan mengembalikan nilai 42 ke variabel completer. Jika terjadi kesalahan, maka method ini akan memanggil method completer.completeError() untuk menyelesaikan perhitungan dan mengembalikan nilai {} ke variabel completer.<p>

>Langkah 6<p>
>Pada langkah 6, kita mengganti kode di method onPressed(). Method onPressed() sebelumnya menggunakan then() untuk menangani hasil dari method getNumber(). Namun, method ini tidak menangani kesalahan yang mungkin terjadi saat memanggil method getNumber().<p>
>Kode ini menggunakan then() dan catchError() untuk menangani hasil dari method getNumber(). Jika tidak terjadi kesalahan, maka method ini akan memanggil method setState() untuk memperbarui state dari widget. Jika terjadi kesalahan, maka method ini akan memanggil method setState() untuk memperbarui state dari widget dan menampilkan pesan kesalahan.<p>

> Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 6".<p>

<img src="img/soal5,6.gif">

<br>

# Praktikum 4: Memanggil Future secara paralel
Ketika Anda membutuhkan untuk menjalankan banyak Future secara bersamaan, ada sebuah class yang dapat Anda gunakan yaitu: FutureGroup.<p>

FutureGroup tersedia di package async, yang mana itu harus diimpor ke file dart Anda, seperti berikut.<p>
```dart
import 'package:async/async.dart';
```

> **Catatan:** Package dart:async dan async/async.dart merupakan library yang berbeda. Pada beberapa kasus, Anda membutuhkan kedua lib tersebut untuk me-run code async.<p>

FutureGroup adalah sekumpulan dari Future yang dapat run secara paralel. Ketika run secara paralel, maka konsumsi waktu menjadi lebih hemat (cepat) dibanding run method async secara single setelah itu method async lainnya.<p>

Ketika semua code async paralel selesai dieksekusi, maka FutureGroup akan return value sebagai sebuah List, sama juga ketika ingin menambahkan operasi paralel dalam bentuk List.<p>

Setelah Anda menyelesaikan praktikum 3, Anda dapat melanjutkan praktikum 4 ini. Selesaikan langkah-langkah praktikum berikut ini menggunakan editor Visual Studio Code (VS Code) atau Android Studio atau code editor lain kesukaan Anda. Jawablah di laporan praktikum Anda pada setiap soal yang ada di beberapa langkah praktikum ini.<p>

> Perhatian: Diasumsikan Anda telah berhasil menyelesaikan Praktikum 3.

### Langkah 1: Buka file main.dart
Tambahkan method ini ke dalam class _FuturePageState<p>
<img src="https://jti-polinema.github.io/flutter-codelab/12-async/img//4430acb8ffa21cf1.png">

### Langkah 2: Edit onPressed()
Anda bisa hapus atau comment kode sebelumnya, kemudian panggil method dari langkah 1 tersebut.<p>
<img src="https://jti-polinema.github.io/flutter-codelab/12-async/img//a8eae50272d363cf.png">


### Langkah 3: Run
Anda akan melihat hasilnya dalam 3 detik berupa angka 6 lebih cepat dibandingkan praktikum sebelumnya menunggu sampai 9 detik.<p>

>Soal 7
> - Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 7".<p>
**Jawab**<p>
<img src="img/soal7.gif">

### Langkah 4: Ganti variabel futureGroup
Anda dapat menggunakan FutureGroup dengan Future.wait seperti kode berikut.<p>
```dart
final futures = Future.wait<int>([
  returnOneAsync(),
  returnTwoAsync(),
  returnThreeAsync(),
]);
```

> Soal 8<p>
> - Jelaskan maksud perbedaan kode langkah 1 dan 4!<p>
**Jawab**<p>
> Perbedaan kode langkah 1 dan kode langkah 4 adalah pada penggunaan variabel futureGroup. Pada langkah 1, variabel futureGroup digunakan untuk menampung FutureGroup<int>. FutureGroup adalah sebuah objek yang dapat digunakan untuk mengelompokkan beberapa Future bersama-sama. Sedangkan pada langkah 4, variabel futureGroup diganti dengan Future.wait<int>(). Future.wait<int>() adalah sebuah fungsi yang dapat digunakan untuk menunggu beberapa Future selesai dijalankan.
<br><br>

# Praktikum 5: Menangani Respon Error pada Async Code
Ada beberapa teknik untuk melakukan handle error pada code async. Pada praktikum ini Anda akan menggunakan 2 cara, yaitu then() callback dan pola async/await.<p>

Setelah Anda menyelesaikan praktikum 4, Anda dapat melanjutkan praktikum 5 ini. Selesaikan langkah-langkah praktikum berikut ini menggunakan editor Visual Studio Code (VS Code) atau Android Studio atau code editor lain kesukaan Anda. Jawablah di laporan praktikum Anda pada setiap soal yang ada di beberapa langkah praktikum ini.<p>

> Perhatian: Diasumsikan Anda telah berhasil menyelesaikan Praktikum 4.

### Langkah 1: Buka file main.dart
Tambahkan method ini ke dalam class _FuturePageState<p>
<img src="https://jti-polinema.github.io/flutter-codelab/12-async/img//2cba66fc6381820e.png">

### Langkah 2: ElevatedButton
Ganti dengan kode berikut<p>
<img src="https://jti-polinema.github.io/flutter-codelab/12-async/img//9659bd29ea2724aa.png">

### Langkah 3: Run
Lakukan run dan klik tombol GO! maka akan menghasilkan seperti gambar berikut.<p>
<img src="https://jti-polinema.github.io/flutter-codelab/12-async/img//8a644f3bb34dc4fb.png"><p>
Pada bagian debug console akan melihat teks Complete seperti berikut.<p>
<img src="https://jti-polinema.github.io/flutter-codelab/12-async/img//b45bbfe7f2b1f61b.png"><p>

> Soal 9<p>
> - Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 9".<p>
**jawab**<p>
<img src="img/soal9,10.gif"><p><br>
<img src="img/image9,10a.png">

### Langkah 4: Tambah method handleError()
Tambahkan kode ini di dalam class _FutureStatePage<p>
<img src="https://jti-polinema.github.io/flutter-codelab/12-async/img//5b01a21f4e2717d3.png">

> Soal 10<p>
> - Panggil method handleError() tersebut di ElevatedButton, lalu run. Apa hasilnya? Jelaskan perbedaan kode langkah 1 dan 4!<p>
**Jawab**<p>
<img src="img/soal9,10.gif"><p><br>
<img src="img/image9,10a.png"><p>

>Perbedaan kode langkah 1 dan kode langkah 4 adalah pada penanganan error. Pada langkah 1, method returnError() tidak menangani error yang terjadi. Jika error terjadi, maka method tersebut akan berhenti dan tidak mengembalikan nilai apa pun.

>Sedangkan pada langkah 4, method handleError() menangani error yang terjadi dengan menggunakan try-catch-finally. Pada try block, method handleError() mencoba untuk menjalankan method returnError(). Jika error terjadi, maka try block akan berhenti dan error akan ditangkap oleh catch block. Pada catch block, method handleError() akan menampilkan error ke layar menggunakan print(). Finally block akan selalu dijalankan, terlepas dari apakah ada error yang terjadi atau tidak.

<br><br>

# Praktikum 6: Menggunakan Future dengan StatefulWidget
Seperti yang Anda telah pelajari, Stateless widget tidak dapat menyimpan informasi (state), StatefulWidget dapat mengelola variabel dan properti dengan method setState(), yang kemudian dapat ditampilkan pada UI. State adalah informasi yang dapat berubah selama life cycle widget itu berlangsung.<p>

Ada 4 method utama dalam life cycle StatefullWidget:<p>

- initState(): dipanggil sekali ketika state dibangun. Bisa dikatakan ini juga sebagai konstruktor class.
- build(): dipanggil setiap kali ada perubahan state atau UI. Method ini melakukan destroy UI dan membangun ulang dari nol.
- deactive() dan dispose(): digunakan untuk menghapus widget dari tree, pada beberapa kasus dimanfaatkan untuk menutup koneksi ke database atau menyimpan data sebelum berpindah screen.
  
Setelah Anda menyelesaikan praktikum 5, Anda dapat melanjutkan praktikum 6 ini. Selesaikan langkah-langkah praktikum berikut ini menggunakan editor Visual Studio Code (VS Code) atau Android Studio atau code editor lain kesukaan Anda. Jawablah di laporan praktikum Anda pada setiap soal yang ada di beberapa langkah praktikum ini.<p>

> Perhatian: Diasumsikan Anda telah berhasil menyelesaikan Praktikum 5.

### Langkah 1: install plugin geolocator
Tambahkan plugin geolocator dengan mengetik perintah berikut di terminal.<p>
```dart
flutter pub add geolocator
```

### Langkah 2: Tambah permission GPS
Jika Anda menargetkan untuk platform Android, maka tambahkan baris kode berikut di file android/app/src/main/androidmanifest.xml<p>
```dart
<uses-permission android:name="android.permission.ACCESS_FINE_LOCATION"/>
<uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION"/>
```

Jika Anda menargetkan untuk platform iOS, maka tambahkan kode ini ke file Info.plist<p>
```dart
<key>NSLocationWhenInUseUsageDescription</key>
<string>This app needs to access your location</string>
```

### Langkah 3: Buat file geolocation.dart
Tambahkan file baru ini di folder lib project Anda.<p>

### Langkah 4: Buat StatefulWidget
Buat class LocationScreen di dalam file geolocation.dart<p>

### Langkah 5: Isi kode geolocation.dart
<img src="https://jti-polinema.github.io/flutter-codelab/12-async/img//e9947082d70bbfbb.png"><p>

> Soal 11<p>
> Tambahkan nama panggilan Anda pada tiap properti title sebagai identitas pekerjaan Anda.<p>
**Jawab :** 
```dart
appBar: AppBar(
        title: const Text('Fanesabhirawaning'),
        backgroundColor: Colors.purple,
        titleTextStyle: const TextStyle(
          color: Colors.white,
        ),
      ),
```
 
### Langkah 6: Edit main.dart
Panggil screen baru tersebut di file main Anda seperti berikut.<p>
```dart
home: LocationScreen(),
```

### Langkah 7: Run
Run project Anda di device atau emulator (bukan browser), maka akan tampil seperti berikut ini.<p>
<img src="https://jti-polinema.github.io/flutter-codelab/12-async/img//769ef7d3863f2f35.png"><p>

**Jawab**<p>
<img src="img/imagelangkah7.png"><p>

### Langkah 8: Tambahkan animasi loading
Tambahkan widget loading seperti kode berikut. Lalu hot restart, perhatikan perubahannya.<p>
<img src="https://jti-polinema.github.io/flutter-codelab/12-async/img//e528461199688c99.png"><p>

**Soal 12**<p>
- Jika Anda tidak melihat animasi loading tampil, kemungkinan itu berjalan sangat cepat. Tambahkan delay pada method getPosition() dengan kode await Future.delayed(const Duration(seconds: 3));

>Jawab : 
```dart
Future<Position> getPosition() async {
    await Geolocator.requestPermission();
    await Geolocator.isLocationServiceEnabled();
    await Future.delayed(const Duration(seconds: 3));
    Position? position = await Geolocator.getCurrentPosition();
    return position;
  }
```
- Apakah Anda mendapatkan koordinat GPS ketika run di browser? Mengapa demikian?

>Jawab :

>Karena package geolocator juga support di browser, sehingga koordinat GPS juga bisa didapatkan pada browser, beserta izinnya.<p>

- Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 12".<p>

<img src="img/soal12,13,14.gif"><p>

<br><br>

# Praktikum 7: Manajemen Future dengan FutureBuilder
Pola ketika menerima beberapa data secara async dan melakukan update pada UI sebenarnya itu tergantung pada ketersediaan data. Secara umum fakta di Flutter, ada sebuah widget yang membantu Anda untuk memudahkan manajemen future yaitu widget FutureBuilder.<p>

Anda dapat menggunakan FutureBuilder untuk manajemen future bersamaan dengan update UI ketika ada update Future. FutureBuilder memiliki status future sendiri, sehingga Anda dapat mengabaikan penggunaan setState, Flutter akan membangun ulang bagian UI ketika update itu dibutuhkan.<p>

Untuk lebih memahami widget FutureBuilder, mari kita coba dengan praktikum ini.<p>

Setelah Anda menyelesaikan praktikum 6, Anda dapat melanjutkan praktikum 7 ini. Selesaikan langkah-langkah praktikum berikut ini menggunakan editor Visual Studio Code (VS Code) atau Android Studio atau code editor lain kesukaan Anda. Jawablah di laporan praktikum Anda pada setiap soal yang ada di beberapa langkah praktikum ini.<p>

Perhatian: Diasumsikan Anda telah berhasil menyelesaikan Praktikum 6.<p>

### Langkah 1: Modifikasi method getPosition()
Buka file geolocation.dart kemudian ganti isi method dengan kode ini.<p>
<img src="https://jti-polinema.github.io/flutter-codelab/12-async/img//d219a26080007e5f.png">

### Langkah 2: Tambah variabel
Tambah variabel ini di class _LocationScreenState<p>
<img src="https://jti-polinema.github.io/flutter-codelab/12-async/img//2bd8bac7676f257c.png">

### Langkah 3: Tambah initState()
Tambah method ini dan set variabel position<p>
<img src="https://jti-polinema.github.io/flutter-codelab/12-async/img//3214e62efe9a252b.png">

### Langkah 4: Edit method build()
Ketik kode berikut dan sesuaikan. Kode lama bisa Anda comment atau hapus.<p>
<img src="https://jti-polinema.github.io/flutter-codelab/12-async/img//85adce0916edeb8e.png">

> Soal 13
> - Apakah ada perbedaan UI dengan praktikum sebelumnya? Mengapa demikian?
> - Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 13".
> - Seperti yang Anda lihat, menggunakan FutureBuilder lebih efisien, clean, dan reactive dengan Future bersama UI.

**Jawab**

- Apakah ada perbedaan UI dengan praktikum sebelumnya? Mengapa demikian?
> Kedua praktikum menampilkan koordinat Geolokasi dengan layout yang sama. Hal ini terjadi karena keduanya mengambil lokasi pengguna secara langsung saat aplikasi dimulai.<p>

>Untuk pembaruan UI, pada kasus pertama, setState digunakan untuk memperbarui variabel state myPosition. Pada kasus kedua, FutureBuilder digunakan untuk mengelola pembaruan UI secara otomatis. Namun pada akhirnya, hasil tampilan UI terlihat sama karena keduanya memiliki penundaan yang sama, yakni 3 detik.<p>

- Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 13".<p>
<img src="img/soal12,13,14.gif"><p>

### Langkah 5: Tambah handling error
Tambahkan kode berikut untuk menangani ketika terjadi error. Kemudian hot restart.<p>
```dart
else if (snapshot.connectionState == ConnectionState.done) {
  if (snapshot.hasError) {
     return Text('Something terrible happened!');
  }
  return Text(snapshot.data.toString());
}
```

> Soal 14
> - Apakah ada perbedaan UI dengan langkah sebelumnya? Mengapa demikian?<p>
> - Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 14".<p>

**Jawab**
- Apakah ada perbedaan UI dengan langkah sebelumnya? Mengapa demikian?<p>
> Langkah ini tidak mengubah tampilan UI. Hal ini karena langkah ini hanya menambahkan fungsi handleError() yang akan dijalankan jika terjadi kesalahan. Namun, pada langkah ini tidak ada kesalahan yang terjadi selama pemrosesan data lokasi. Oleh karena itu, pesan kesalahan "Something terrible happened!" tidak akan ditampilkan.<p>

- Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 14".<p>
<img src="img/soal12,13,14.gif"><p>


<br><br>

## Praktikum 8: Navigation route dengan Future Function
Praktikum kali ini Anda akan melihat manfaat Future untuk Navigator dalam transformasi Route menjadi sebuah function async. Anda akan melakukan push screen baru dan fungsi await menunggu data untuk melakukan update warna background pada screen.<p>

Setelah Anda menyelesaikan praktikum 7, Anda dapat melanjutkan praktikum 8 ini. Selesaikan langkah-langkah praktikum berikut ini menggunakan editor Visual Studio Code (VS Code) atau Android Studio atau code editor lain kesukaan Anda. Jawablah di laporan praktikum Anda pada setiap soal yang ada di beberapa langkah praktikum ini.<p>

> Perhatian: Diasumsikan Anda telah berhasil menyelesaikan Praktikum 7.

### Langkah 1: Buat file baru navigation_first.dart
Buatlah file baru ini di project lib Anda.<p>

### Langkah 2: Isi kode navigation_first.dart
<img src="https://jti-polinema.github.io/flutter-codelab/12-async/img//94d4517fe205d4c7.png">

> Soal 15
> - Tambahkan nama panggilan Anda pada tiap properti title sebagai identitas pekerjaan Anda.
> - Silakan ganti dengan warna tema favorit Anda.

**Jawab:**

```dart
appBar: AppBar(
        title: const Text('Fanesabhirawaning'),
        backgroundColor: Colors.purple.shade300,
        titleTextStyle: const TextStyle(
          color: Colors.white,
        ),
      ),
```

### Langkah 3: Tambah method di class_NavigationFirstState
Tambahkan method ini.<p>
```dart
Future _navigateAndGetColor(BuildContext context) async {
   color = await Navigator.push(context,
        MaterialPageRoute(builder: (context) => const NavigationSecond()),) ?? Colors.blue;
   setState(() {});
   });
}
```

### Langkah 4: Buat file baru navigation_second.dart
Buat file baru ini di project lib Anda. Silakan jika ingin mengelompokkan view menjadi satu folder dan sesuaikan impor yang dibutuhkan.<p>

### Langkah 5: Buat class NavigationSecond dengan StatefulWidget
<img src="https://jti-polinema.github.io/flutter-codelab/12-async/img//faf70be0b0b003fd.png">

### Langkah 6: Edit main.dart
Lakukan edit properti home.<p>
```dart
home: const NavigationFirst(),
```

### Langkah 8: Run
Lakukan run, jika terjadi error silakan diperbaiki.<p>
> Soal 16
> - Cobalah klik setiap button, apa yang terjadi ? Mengapa demikian ?
> - Gantilah 3 warna pada langkah 5 dengan warna favorit Anda!
> - Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 16".

Hasilnya akan seperti gambar berikut ini.<p>
<img src="https://jti-polinema.github.io/flutter-codelab/12-async/img//b363de9b154b9314.png"><p>

**Jawab:**
- Cobalah klik setiap button, apa yang terjadi ? Mengapa demikian ?<p>
> Ketika tombol ditekan, warnanya akan berubah sesuai dengan warna yang telah ditetapkan pada widget ElevatedButton() di class navigation_second.dart. Hal ini dikarenakan setiap tombol memiliki fungsi Navigation.pop() yang memiliki parameter berupa context dan warna yang telah ditetapkan. Oleh karena itu, setiap tombol yang ditekan akan menampilkan warna yang berbeda-beda sesuai dengan nilai variabel warna.<p>

- Gantilah 3 warna pada langkah 5 dengan warna favorit Anda!<p>
<img src="img/soal16.gif"><p>

- Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 16".<p>
<img src="img/soal16.gif"><p>