// void main(){
//     List<int?> list = [1, 2, 3];
//     var list2 = [0, ...list];
//     print(list);
//     print(list2);
//     print(list2.length);

//     list = [1, 2, null];
//     print(list);
//     var list3 = [0, ...list];
//     print(list3.length);

//     print("ini nim saya : ");
//     var nimA = [2, 2, 4, 1, 7];
//     var nimB = [2, 0, 0, 2, 7];
//     var list4 = [...nimA, ...nimB];
//     print(list4);
//     print(list4.length);
// }

// void main(){
//   var promoActive = false;
//   var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
// print(nav);

// }

// void main(){
//   String login = 'user';
//   var nav2 = ['Home', 'Furniture', 'Plants', if (login case 'Manager') 'Inventory'];
// print(nav2);
// }

void main(){
  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
  print(listOfStrings);
}