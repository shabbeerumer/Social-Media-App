import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  final firebaseFirestore = FirebaseFirestore.instance.collection('customers').snapshots();

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: StreamBuilder(
                stream: firebaseFirestore,
                builder: (BuildContext context , AsyncSnapshot<QuerySnapshot> snapshot){
                  if(snapshot.connectionState == ConnectionState.waiting){
                   return  Center(child: CircularProgressIndicator(color: Colors.black,));
                  }
                  return ListView.builder(
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: (context , index){
                        return ListTile(
                          title: Text(snapshot.data!.docs[index]['name'].toString()),
                          subtitle: Text(snapshot.data!.docs[index]['phone'].toString()),
                          trailing: Text(snapshot.data!.docs[index]['cnic'].toString()),
                        );
                      });
                }),
          ),
        ],
      )

    );
  }
}
