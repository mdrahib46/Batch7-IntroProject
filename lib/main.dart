import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //   useInheritedMediaQuery: true,
      //   locale: DevicePreview.locale(context),
      //   builder: DevicePreview.appBuilder,
      //   theme: ThemeData.light(),
      //   darkTheme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Colors.teal,
      ),
      body: SizedBox(
       height: MediaQuery.of(context).size.width,
          width: MediaQuery.of(context).size.width,
       child: FractionallySizedBox(
         widthFactor: 0.5,
         heightFactor: 0.5,
         child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.red
          ),
         ),
       )
      ),
          backgroundColor: Colors.green,

    );
  }
}
