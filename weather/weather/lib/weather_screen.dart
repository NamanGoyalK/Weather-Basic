import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Weather',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 25, 25, 26),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              if (kDebugMode) {
                print('Refreshed');
              }
            },
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            //Main Card
            SizedBox(
              width: double.infinity,
              child: Card(
                elevation: 12,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        // SizedBox(
                        //   height: 20,
                        // ),
                        Text(
                          "34°C",
                          style: TextStyle(
                              fontSize: 35, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Icon(
                          Icons.cloud,
                          size: 50,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Cloudy",
                          style: TextStyle(fontSize: 20),
                        ),
                        // SizedBox(
                        //   height: 20,
                        // ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Placeholder(
              fallbackHeight: 120,
            ),
            const SizedBox(height: 20),
            const Placeholder(
              fallbackHeight: 120,
            ),
          ],
        ),
      ),
    );
  }
}
