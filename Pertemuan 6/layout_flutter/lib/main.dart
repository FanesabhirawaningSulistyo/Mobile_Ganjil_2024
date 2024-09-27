import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
  Color color = Theme.of(context).primaryColor;
  Widget titleSection = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      Expanded(
        /* Jawaban soal 1*/
        child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            /*Jawaban soal 2*/
            Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Wisata Gunung di Batu',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Batu, Malang, Indonesia',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
      /*Jawaban soal 3*/
      Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text('41'),
        ],
      ),
    );
    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: Align(
        alignment: Alignment
            .centerLeft, // Sesuaikan dengan alignment yang Anda inginkan
        child: Text(
          'Gunung Kawi adalah sebuah gunung berapi yang sudah lama tidak aktif, berada sebelah barat daya di Kabupaten Malang,' 
          'berbatasan langsung dengan Kabupaten Blitar Jawa Timur, Indonesia, Tidak ada catatan sejarah mengenai letusan gunung berapi ini. '
          'Gunung ini cukup dikenal karena adanya tempat ziarah Pesarean Gunung Kawi.'
          '\n\n'
          'Author : Fanesabhirawaning Sulistyo'
          '\n'
          'NIM     : 2241720027 ',
          softWrap: true,
          textAlign: TextAlign.justify, // Mengatur teks menjadi justify
        ),
      ),
    );

    return MaterialApp(
      title: 'Flutter layout: Fanesabhirawaning Sulistyo | 2241720027',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView(
          children: [
              Image.asset(
                'images/gunungkawi.jpg',
                 width: 600,
                height: 240,
                fit: BoxFit.cover,
              ),
              titleSection,
              buttonSection,
              textSection
            ],
        ),
      ),
    );
  }

Column _buildButtonColumn(Color color, IconData icon, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, color: color),
      Container(
        margin: const EdgeInsets.only(top: 8),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: color,
          ),
        ),
      ),
    ],
  );
}
}
