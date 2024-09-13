//Soal No 4
// void main() {
//   var say = (String from, String msg, [String? device]) {
//     var result = '$from says $msg';
//     if (device != null) {
//       result = '$result with a $device';
//     }
//     return result;
//   };

//   print(say('Bob', 'Howdy'));
//   print(say('Bob', 'Howdy', 'smoke signal'));
// }


// // Soal No 5
// void main() {
//   var list = ['apples', 'bananas', 'oranges'];
//   list.forEach((item) {
//     print('${list.indexOf(item)}: $item');
//   });
// }


void main() {
  // Lexical Scope
  String greeting = "Halo, ";
  
  void greet(String name) {
    print("$greeting$name");
  }
  
  greet("Fanesa");

  // Lexical Closures
  Function makeGreeter(String greeting) {
    return (String name) {
      print("$greeting$name");
    };
  }

  var greetInJawa = makeGreeter("Selamat Pagi, ");
  greetInJawa("Zeze");
}




//Soal No 7
// Map<String, dynamic> getPersonInfo() {
//   String name = "Fanesa";
//   int age = 20;
//   String location = "Malang";

//   Map<String, dynamic> person = {
//     'name': name,
//     'age': age,
//     'location': location,
//   };

//   return person;
// }

// void main() {
//   var personInfo = getPersonInfo();
//   print("Name: ${personInfo['name']}");
//   print("Age: ${personInfo['age']}");
//   print("Location: ${personInfo['location']}");
// }



