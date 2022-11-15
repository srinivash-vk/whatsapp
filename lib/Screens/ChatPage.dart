import 'package:flutter/material.dart';

import 'SampleData.dart';

// class ChatPage extends StatefulWidget {
//   final Info userData;
//   const ChatPage({Key? key, required this.userData}) : super(key: key);

//   @override
//   _ChatPageState createState() => _ChatPageState();
// }

// class _ChatPageState extends State<ChatPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0,
//         leading: Row(
//           children: [
//             IconButton(
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//               icon: const Icon(Icons.arrow_back),
//             ),
//           ],
//         ),
//       ),
//       body: Container(
//         child: Text(userData.id),
//       ),
//     );
//   }
// }

class ChatPage extends StatelessWidget {
  // final Info chatData;
  const ChatPage({ Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
       return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back),
            ),
          ],
        ),
      ),
      body: Container(
        // child: Text(chatData.userName.toString()),
      ),
    );
  }
}