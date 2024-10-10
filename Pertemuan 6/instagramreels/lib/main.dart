import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              // Background image
              Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://plus.unsplash.com/premium_photo-1688045693882-dc80db64323a?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'), // URL gambar sesuai
                fit: BoxFit.cover,
              ),
            ),
          ),
              Column(
                children: [
                  // Top part with "Reels" text and camera icon
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                    child: Row(
                      children: const [
                        Text(
                          'Reels',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Icon(CupertinoIcons.camera, color: Colors.white),
                      ],
                    ),
                  ),

                  // Expanded area for reels content
                  Expanded(
                    child: Container(),
                  ),

                  // Footer section (username, follow button, caption, and audio info)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // User profile picture (placeholder image)
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://via.placeholder.com/150'), // Placeholder image
                          radius: 20,
                        ),
                        const SizedBox(width: 10.0),

                        // User information and caption
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Text(
                                  'username',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(width: 10.0),
                                // Transparent "Ikuti" button with white border
                                Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    border: Border.all(color: Colors.white), // White border
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: const Text(
                                    'Ikuti',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 5.0),
                            const Text(
                              'Great song!',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                            const SizedBox(height: 5.0),
                            const Text(
                              'Easy Listening... · DREAMS',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),

                        const Spacer(),
                        // Menggunakan Padding untuk memberikan jarak
                        Padding(
                          padding: const EdgeInsets.only(top: 16.0), // Jarak atas 16 piksel
                          child: Transform.rotate(
                            angle: 90 * 3.14159 / 180, // Mengonversi 90 derajat ke radian
                            child: Icon(
                              Icons.more_vert, // Ikon tiga titik vertikal
                              color: Colors.white,
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),

                  // Bottom navigation bar
                  // Bottom navigation bar
// Bottom navigation bar
Padding(
  padding: const EdgeInsets.only(top: 20.0), // Jarak antara navigasi dan section di atasnya
  child: Container(
    color: Colors.black, // Menambahkan background hitam pada navigation bar
    padding: const EdgeInsets.symmetric(vertical: 10.0), // Padding internal dalam navigation bar
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        Icon(CupertinoIcons.home, color: Colors.white),
        Icon(CupertinoIcons.search, color: Colors.white),
        Icon(CupertinoIcons.add_circled, color: Colors.white),
        Icon(CupertinoIcons.play_rectangle, color: Colors.white),
        Icon(CupertinoIcons.person, color: Colors.white),
      ],
    ),
  ),
),


                ],
              ),

              // Right section for icons like Love, Comments, Share, and Music icon
              Positioned(
                right: 10,
                bottom: 120,
                child: Column(
                  children: [
                    Icon(CupertinoIcons.heart, color: Colors.white),
                    const SizedBox(height: 10.0),
                    const Text(
                      '129rb', // Number of likes
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                    const SizedBox(height: 10.0),
                    Icon(CupertinoIcons.chat_bubble, color: Colors.white),
                    const SizedBox(height: 10.0),
                    const Text(
                      '2.558', // Number of comments
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                    const SizedBox(height: 10.0),
                    Icon(CupertinoIcons.paperplane, color: Colors.white),
                    const SizedBox(height: 10.0),
                    const Text(
                      '8.366', // Number of shares
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                    
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
