### **Praktikum 1: Menerapkan Control Flows ("if/else")**
Selesaikan langkah-langkah praktikum berikut ini menggunakan DartPad di browser Anda.

### **Langkah 1**
Ketik atau salin kode program berikut ke dalam fungsi main().

```dart
String test = "test2";
if (test == "test1") {
   print("Test1");
} else If (test == "test2") {
   print("Test2");
} Else {
   print("Something else");
}

if (test == "test2") print("Test2 again");
```

### **Langkah 2**
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan!

**JAWAB**
<p>
Terdapat beberapa masalah penulisan yang dapat menyebabkan error. </p>
<img src = "img/image1.png"><p>

Terdapat beberapa masalah yaitu :

- Menggunakan huruf besar untuk kata kunci If dan Else, tetapi dalam Dart, kata kunci ini harus ditulis dalam huruf kecil, yaitu if dan else.

- Menggunakan Else If (dengan huruf besar) yang seharusnya ditulis sebagai else if (dengan huruf kecil).



Berikut adalah kode yang diperbaiki
```dart
void main() {
  String test = "test2";
  if (test == "test1") {
    print("Test1");
  } else if (test == "test2") {
    print("Test2");
  } else {
    print("Something else");
  }

  if (test == "test2") {
    print("Test2 again");
  }
}
```

Berikut adalah hasil screenshot kode program.
</p>
<img src = "img/image2.png"><p>

### **Langkah 3**
Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

```dart
String test = "true";
if (test) {
   print("Kebenaran");
}
```
Apa yang terjadi ? Jika terjadi error, silakan perbaiki namun tetap menggunakan if/else.

**JAWAB**<p>
berikut adalah hasil eksekusi setelah menambahkan kode pada langkah 3 diatas<p>
<img src = "img/image3.png"><p>
Terdapat beberapa masalah dan error yaitu :

- Menguji kondisi if menggunakan sebuah string "true". Namun, dalam Dart, kondisi dalam pernyataan if harus berupa ekspresi boolean (true atau false), bukan string. Oleh karena itu, akan terjadi error saat mencoba menguji string sebagai kondisi.
- Selain itu, harus mengubah "true" ke boolean true jika Anda ingin mencetak pesan "Kebenaran" ketika kondisinya benar.

Berikut adalah kode yang diperbaiki:

```dart
void main() {
  bool test = true; // Menggunakan boolean true
  if (test) {
    print("Kebenaran");
  }
}
```
Dalam kode yang diperbaiki, variabel test telah dideklarasikan sebagai boolean true, dan kode akan berfungsi dengan benar. Ini akan mencetak "Kebenaran" karena kondisi if terpenuhi.
<br>
Berikut adalah hasil screenshot kode program.<p>
<img src = "img/image4.png"><p>

### **Praktikum 2: Menerapkan Perulangan "while" dan "do-while"**
Selesaikan langkah-langkah praktikum berikut ini menggunakan DartPad di browser Anda.

### **Langkah 1**
Ketik atau salin kode program berikut ke dalam fungsi main().

```dart
while (counter < 33) {
  print(counter);
  counter++;
}
```

### **Langkah 2**
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.

**JAWAB**<p>
Terdapat beberapa masalah yang dapat menyebabkan error saat dieksekusi.<p>
<img src = "img/image5.png"><p>
Error terjadi karena ariabel counter tidak dideklarasikan atau diinisialisasi sebelum digunakan.
Jadi perlu mendeklarasikan dan menginisialisasi variabel counter sebelum menggunakannya. Misalnya, bisa menambahkan baris berikut sebelum loop while:

```dart
int counter = 0;
```
Kode lengkap yang diperbaiki akan menjadi:

```dart
void main(){
  int counter = 0; // Inisialisasi variabel counter
  while (counter < 33) {
    print(counter);
    counter++;
  }
}
```
<img src = "img/image6.png"><p>
Dengan demikian, kode tersebut akan berfungsi dengan baik. Itu akan mencetak angka dari 0 hingga 32 ke layar console.

### **Langkah 3**
Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

```dart
do {
  print(counter);
  counter++;
} while (counter < 77);
```
Apa yang terjadi ? Jika terjadi error, silakan perbaiki namun tetap menggunakan do-while.

**JAWAB**<p>
Terdapat masalah yang akan menyebabkan error jika dijalankan.<p>
<img src = "img/image7.png"><p>
Perlu mendeklarasikan dan menginisialisasi variabel counter sebelum menggunakannya, sama seperti yang telah saya sebutkan dalam langkah sebelumnya.<p>

Berikut adalah kode yang diperbaiki:

```dart
void main(){
  int counter = 0; // Inisialisasi variabel counter
  do {
    print(counter);
    counter++;
  } while (counter < 77);
}

```
Dengan tambahan inisialisasi variabel counter, kode tersebut akan berfungsi dengan baik. Itu akan mencetak angka dari 0 hingga 76 ke layar console.<p>
<img src = "img/image8.png"><p>

### **Praktikum 3: Menerapkan Perulangan "for" dan "break-continue"**
Selesaikan langkah-langkah praktikum berikut ini menggunakan DartPad di browser Anda.

### **Langkah 1**
Ketik atau salin kode program berikut ke dalam fungsi main().

```dart
for (Index = 10; index < 27; index) {
  print(Index);
}
```

### **Langkah 2**
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.

**JAWAB**<p>
Terdapat beberapa masalah yang dapat menyebabkan error saat dieksekusi.<p>
<img src = "img/image9.png"><p>

- Variabel Index tidak dideklarasikan atau diinisialisasi sebelum digunakan.
- Dalam loop for, tidak dapat melakukan peningkatan nilai variabel Index. Oleh karena itu, loop ini akan menjadi loop tak berujung, yang akan mengakibatkan program berhenti merespons atau hang.
- Untuk memperbaiki kode tersebut, perlu mendeklarasikan dan menginisialisasi variabel Index, serta menambahkan langkah peningkatan nilai variabel Index dalam loop for. 

Berikut adalah kode yang diperbaiki:

```dart
void main(){
  for (int Index = 10; Index < 27; Index++) {
    print(Index);
  }
}
```

Dengan perbaikan ini, kode akan berfungsi dengan baik. Itu akan mencetak angka dari 10 hingga 26 ke layar console

<img src = "img/image10.png"><p>


### **Langkah 3**
Tambahkan kode program berikut di dalam for-loop, lalu coba eksekusi (Run) kode Anda.

```dart
If (Index == 21) break;
Else If (index > 1 || index < 7) continue;
print(index);
```
Apa yang terjadi ? Jika terjadi error, silakan perbaiki namun tetap menggunakan for dan break-continue.

**JAWAB**<p><img src = "img/image11.png"><p>
Terdapat beberapa masalah yang perlu diperbaiki sebelum kode dapat dijalankan dengan benar<p>
<img src = "img/image11.png"><p>


- Kesalahan dalam penulisan kata kunci "if" dan "else if" harus diawali dengan huruf kecil (if dan else if), bukan huruf besar seperti yang Anda gunakan.

- Variabel Index harus dideklarasikan dan diinisialisasi sebelum digunakan dalam kondisi.

- Kedua kondisi if dan else if yang Anda berikan memiliki logika yang bertentangan. Pertama, memeriksa apakah Index sama dengan 21 dan jika iya, maka break. Namun, dalam kondisi kedua, memeriksa apakah index lebih besar dari 1 atau kurang dari 7, dan jika iya, maka continue. Kondisi kedua akan selalu benar karena angka 21 memenuhi kedua kondisi tersebut. Kedua kondisi ini akan mengakibatkan program berhenti sebelum mencetak apa pun.

Berikut adalah kode yang diperbaiki:


```dart
void main(){
  for (int Index = 1; Index <= 27; Index++) {
    if (Index == 21) break;
    else if (Index > 1 && Index < 7) continue;
    print(Index);
  }
}

```
<img src = "img/image12.png"><p>

- Perbaikan ini akan membuat program berfungsi dengan benar. Kode akan mencetak angka dari 1 hingga 27 kecuali angka 6 dan 21. Kode ini juga memastikan bahwa variabel Index dideklarasikan dan diinisialisasi sebelum digunakan dalam loop for.



### **Tugas Praktikum**
1. Silakan selesaikan Praktikum 1 sampai 3, lalu dokumentasikan berupa screenshot hasil pekerjaan beserta penjelasannya!<p>
**Jawab**<p>
- [Praktikum 1 (klik)](#praktikum-1-menerapkan-control-flows-ifelse)
- [Praktikum 2 (klik)](#praktikum-2-menerapkan-perulangan-while-dan-do-while)
- [Praktikum 3 (klik)](#praktikum-3-menerapkan-perulangan-for-dan-break-continue)
<p>

2. Buatlah sebuah program yang dapat menampilkan bilangan prima dari angka 0 sampai 201 menggunakan Dart. Ketika bilangan prima ditemukan, maka tampilkan nama lengkap dan NIM Anda.<p>
**Jawab**<p>

```dart

//Tugas
void main() {
  int batas = 201; //Menentukan batas atas untuk pencarian bilangan prima. 
  String nama = "Fanesabhirawaning Sulistyo";
  String nim = "2241720027";

  print("Bilangan prima dari 2 hingga $batas adalah:");
  algoritmaSieve(batas); // Mencetak bilangan prima secara mendatar
  print("Nama : $nama");
  print("NIM : $nim");
}


void algoritmaSieve(int batas) {
  List<int> bilanganPrima = []; // Inisialisasi list kosong untuk menampung bilangan prima

  // Mencari dan menambahkan bilangan prima ke dalam list bilanganPrima
  for (int p = 2; p <= batas; p++) {
    if (cekBilanganPrima(p)) {
      bilanganPrima.add(p); // Tambahkan bilangan prima ke dalam list
    }
  }

  // Cetak hasilnya dalam satu baris, dipisahkan dengan koma
  print(bilanganPrima.join(', '));
}

bool cekBilanganPrima(int angka) {
  // Fungsi untuk mengecek apakah bilangan tersebut adalah prima
  if (angka <= 1) return false; //Bilangan kurang dari atau sama dengan 1 bukan bilangan prima.
  for (int i = 2; i * i <= angka; i++) { //Menguji apakah ada bilangan pembagi dari 2 hingga akar kuadrat dari angka
    if (angka % i == 0) { //Jika angka dapat dibagi habis oleh i, maka angka bukan bilangan prima.
      return false;
    }
  }
  return true;
}

```

Output :

<img src = "img/image.png"><p>

