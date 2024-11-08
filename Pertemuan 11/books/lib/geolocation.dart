import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  String myPosition = '';
  Future<Position>? position;

  @override
  void initState() {
    super.initState();

    // getPosition().then((Position myPos) {
    //   myPosition =
    //       'Latitude: ${myPos.latitude.toString()}, Longitude: ${myPos.longitude.toString()}';
    //   setState(() {
    //     myPosition = myPosition;
    //   });
    // });

    position = getPosition();
  }

  Future<Position> getPosition() async {
    await Geolocator.requestPermission();
    await Geolocator.isLocationServiceEnabled();
    Position? position = await Geolocator.getCurrentPosition();
    await Future.delayed(const Duration(seconds: 3));
    return position;
  }

  @override
  Widget build(BuildContext context) {
    // final myWidget = myPosition.isEmpty
    //     ? const CircularProgressIndicator()
    //     : Text(myPosition);

    // return Scaffold(
    //   appBar: AppBar(
    //     title: const Text('Wira'),
    //   ),
    //   body: Center(
    //     child: myWidget,
    //   ),
    // );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Fanesabhirawaning'),
        backgroundColor: Colors.purple,
        titleTextStyle: const TextStyle(
          color: Colors.white,
        ),
      ),
      body: Center(
        child: FutureBuilder(
          future: position,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasError) {
                return const Text('something terrible happened');
              }
              return Text(snapshot.data.toString());
            } else {
              return const Text('');
            }
          },
        ),
      ),
    );
  }
}