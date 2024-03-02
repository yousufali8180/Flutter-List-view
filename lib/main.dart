import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    var arrNames = ['Atik', 'Yousuf', 'Tanjin', 'Shakil', 'Sattojit', 'Zakariya'];
    return Scaffold(
      appBar: AppBar(

        title: Text('Hello'),
      ),
      body: ListView.separated(itemBuilder: (context, index) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(arrNames[index], style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(arrNames[index], style: TextStyle(fontSize: 11, fontWeight: FontWeight.w500, color: Colors.amber),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(arrNames[index], style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.red),),
            )
          ],
        );
      },
      itemCount: arrNames.length,
      separatorBuilder: (context, index){
        return Divider(height: 50, thickness: 2,);
      },
      )
 // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
