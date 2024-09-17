// import 'package:flutter/material.dart';

// class Homepage extends StatefulWidget {
//   const Homepage({super.key});

//   @override
//   State<Homepage> createState() => _HomepageState();
// }

// class _HomepageState extends State<Homepage> {

//   final _TextController = TextEditingController();
//   String userPost = "";

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.end,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Expanded(child: Center(
//               child: Container(
                
//                 child: Text(userPost, style: 
//                 TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),),
//               ),
//             ),),
//             TextField(
//               controller: _TextController,
//               decoration: InputDecoration(
//                 hintText: 'What is on your mind?',
//                 border: OutlineInputBorder(),
//                 suffixIcon: IconButton(onPressed: (){
//                   _TextController.clear();
//                 }, icon: const Icon(Icons.clear)),
//               ),
              
//             ),
//             MaterialButton(onPressed: (){
//               setState(() {
//                 userPost = _TextController.text;
//               });
//             },
//             color: Colors.blue[300],
//             child: Text('Post',style: TextStyle(color: Colors.white),),)
//           ], 
//         ),
//       )
//     );
//   }
// }


// import 'package:flutter/material.dart';

// class Homepage extends StatefulWidget {
//   const Homepage({super.key});

//   @override
//   State<Homepage> createState() => _HomepageState();
// }

// class _HomepageState extends State<Homepage> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: Padding(
//             padding: const EdgeInsets.all(12.0),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 TextField(
//                   decoration: InputDecoration(hintText: "What is on you'r mind?"),
                  
//                   )
//               ],
//             ),
//           )
//         ),
//       ),
//     );
//   }
// }