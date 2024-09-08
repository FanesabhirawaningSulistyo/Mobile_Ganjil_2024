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

