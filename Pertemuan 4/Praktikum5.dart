
// (int, int) tukar((int, int) record) {
//   var (a, b) = record;
//   return (b, a);
// }

// void main() {
//   var record = (1, 2);
//   print(record);
//   print(tukar(record));
// }

// void main() {
//   (String, int) mahasiswa = ('Fanesabhirawaning Sulistyo', 2241720027);
//   print(mahasiswa);
// }

void main(){
  var mahasiswa2 = ('Fanesabhirawaning Sulistyo', a: 2241720027, b: true, 'last');

  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}