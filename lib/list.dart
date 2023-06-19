import 'package:flutter/material.dart';
import 'package:login/login.dart';

class list extends StatefulWidget {
  const list({super.key});

  @override
  State<list> createState() => _listState();
}

class _listState extends State<list> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("PRODUCTITEM"),
          actions: [IconButton(onPressed: (){ signout(context);}, icon: Icon(Icons.exit_to_app,))],
        ),
        body: SafeArea(
            child: ListView.separated(
              itemBuilder: (ctx,index){
             return ListTile(
              title: Text('product${index+1}'),
              subtitle: Text("product...shorts"),
              leading: CircleAvatar(radius: 30,backgroundColor:Colors.yellow ,
              backgroundImage:AssetImage('assets/images/images (1).jpg') ,),
              trailing:Text('${index+1}:00PM') ,
              
            );
              }, 
              separatorBuilder:(ctx,index){
               return Divider();
              }, 
              itemCount: 25,
              )));
  }
}
signout(BuildContext ctx) {
  Navigator.of(ctx).pushAndRemoveUntil(
      MaterialPageRoute(builder: (ctx) => Home()), (route) => false);
}

//  ListView(
//           children: List.generate(
//             100,
//             (index) {
//               return Column(children: [
//                 Text('text $index'),
//                 Divider(
//                   height: 50,
//                   thickness: 2,
//                   color: Colors.black,
//                 )
//               ]);
//             },
//           ),
//         )
