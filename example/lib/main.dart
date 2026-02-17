import 'package:flutter/material.dart';
import 'package:flutter_glide_transformation/flutter_glide_transformation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DemoScreen(),
    );
  }
}

class DemoScreen extends StatelessWidget {
  const DemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Glide Transformations Demo")),
      body: Center(
        child: GlideImage(
          image: Image.asset("assets/images/Card.png").image,
          blur: 0,
          borderRadius: 20,
          grayscale: false,
          width: 250,
          height: 250,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
