// void main(){
// var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
// print(halogens);
// }

// void main(){
//     var names1 = <String>{};
//     Set<String> names2 = {}; // This works, too.
//     var names3 = {}; // Creates a map, not a set.

//     print(names1);
//     print(names2);
//     print(names3);
// }

void main(){
    var names1 = <String>{};
    Set<String> names2 = {}; // This works, too.

    names1.add('Fanesabhirawaning Sulistyo');
    names1.add('2141720027');
    names2.addAll({'Fanesabhirawaning Sulistyo', '2141720027'});

    print("hasilnya adalah");
    print(names1);
    print(names2);
}