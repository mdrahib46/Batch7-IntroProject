import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {

  runApp(DevicePreview(
      enabled: true,
      builder: (context)=> const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
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
          centerTitle: true,
          title: const Text(
            'Responsive design',
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 1,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.teal,
        ),

        // Responsive Design by Orientation Builder
        // body: OrientationBuilder(
        //   builder: (context, Orientation orientation) {
        //     print(orientation);
        //     if(orientation == Orientation.portrait){
        //       return const SafeArea(
        //           child: Wrap(
        //             alignment: WrapAlignment.center,
        //             children: [
        //               Text("datasf dfafsadfa"),
        //               Text("datas dfasdfa"),
        //               Text("daasd fasdfta"),
        //               Text("daas dfasta"),
        //               Text("daasd fasta"),
        //               Text("datdf dfasdfasa"),
        //               Text("asdfa sdf"),
        //             ],
        //           ));
        //     }
        //     return const Center(
        //         child: Wrap(
        //           alignment: WrapAlignment.center,
        //       children: [
        //         Text('To big Screen')
        //       ],
        //     ));
        //   }
        // ),
        body: LayoutBuilder(builder: (context, BoxConstraints constraints){

          if(constraints.maxWidth < 640){
            return Text('This is a phone screen');
          }
          else if(constraints.maxWidth >640 && constraints.maxWidth < 1008){
            return Text('This ia a Teblet Screen');
          }
          else{
            return Center(child: Text('This is a Desktop screen'));
          }
        })

    );
  }
}
