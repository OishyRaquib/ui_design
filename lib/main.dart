import 'package:flutter/material.dart';
import 'Screens/list_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Flutter Demo',
      color: Colors.white,
      theme: ThemeData(
      
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}



class MyHomePage extends StatelessWidget {

  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,          
          children: [
            RichText(
              text: const TextSpan(
                style: TextStyle(color: Colors.black),
              children: [
                TextSpan(text: "  Welcome to\n", style: TextStyle(fontSize: 15)),
                TextSpan(text: "Plan IT", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold))
              ]
            )
            ),
            const SizedBox(
              height:280,
            ),
            
            const Text(
              'Your Personal task management\n          and planning solution',
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),
            
           ),
           const SizedBox(
            height: 10,
           ),
          InkWell(
            child: ElevatedButton(
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const ListPage()));
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.grey.shade800),
                padding: MaterialStateProperty.all(const EdgeInsets.only(left: 40, right: 40, top: 10, bottom: 10)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)))
              ), 
              child: const Text(
                "Let's get started",
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.white,
                ),
              ),
              ),
          ),
          ],
        ),
      ),
    );
  }
}
