import 'package:flutter/material.dart';

class MyImageWidget extends StatelessWidget {
  const MyImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Image(
      image: AssetImage("logo-polinema.png"),
      width: 200,  // Ubah nilai ini sesuai ukuran yang diinginkan
      height: 200, // Ubah nilai ini sesuai ukuran yang diinginkan
    );
  }
}
