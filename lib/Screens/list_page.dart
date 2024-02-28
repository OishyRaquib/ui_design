import 'package:flutter/material.dart';
import 'package:moment_dart/moment_dart.dart';


class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List items=[1,2,3];
  final now=Moment.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task Board",
        style: TextStyle(fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body:ListView.builder(
        itemCount: items.length,
        itemBuilder: (context,index){
          return Card(
            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
            semanticContainer: true,
            margin: const EdgeInsets.only(top: 10, bottom: 5, left: 10, right:10),
            color: Colors.grey[60],
            child: Padding(
              padding: const EdgeInsets.only(left: 15,right: 15,top:8, bottom: 8),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                          Text(
                            "Task ${items[index]}",
                            textAlign: TextAlign.start,
                            style: const TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            )
                          ),
                          const Text(
                            "Your Personal task management and planning solution for\nplanning your day, week & months\n",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black87,
                            )
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                // DateFormat('hh:mm a d Do MMM, y').format(Moment.now()).toString(),
                                now.format('hh:mm a Do MMM, y').toString(),
                                style: TextStyle(
                                  letterSpacing: 1.05,
                                  color: Colors.grey[500],
                                  fontSize: 12,
                                  
                                ),
                                
                              ),
                            ],
                          ),
                        ],
                ),
            ),
          );
        }
        ),
        floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey[800],
        onPressed: () {
          setState((){
            items.add(items.length+1);
          });

        },
        child: const Icon(Icons.add,color: Colors.white),
      ),
    );
    
  }
}