import 'package:flutter/material.dart';
import 'package:whatsapp/Screens/ChatPage.dart';
import 'SampleData.dart';

class UsersList extends StatelessWidget {
  // final List<Info> infoData;
  const UsersList({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: infoData.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) =>
                  //        new ChatPage(chatData:infoData[index],),
                  //   ),
                  // );
                },
                
                  leading: CircleAvatar(
                      radius: 24,
                      backgroundImage:
                          // NetworkImage(info[index]['profilePic'].toString()),
                          infoData[index].userImage),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        infoData[index].userName.toString(),
                        style: const TextStyle(fontSize: 16),
                      ),
                      Text(
                        infoData[index].time.toString(),
                        style:
                            const TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text(
                      infoData[index].message.toString(),
                      style: const TextStyle(fontSize: 14),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  // trailing: Text(
                  //     info[index]['time'].toString(),
                  //     style:const TextStyle(fontSize: 12,color: Colors.grey),
                  //   ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
