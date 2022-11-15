import 'package:flutter/material.dart';
import 'package:whatsapp/Utils/AppColors.dart';

import 'SampleData.dart';

class StatusPage extends StatelessWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Row(
            children: [
              Stack(
                children: <Widget>[
                 const  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage("assets/images/pexels9.jpg"),
                  ),
                  Positioned(
                    top: 30,
                    left: 30,
                    child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black87, width: 1),
                          borderRadius: BorderRadius.circular(50),
                          color: AppColor.lightGreenDark),
                      child: const ClipRRect(
                        child: Center(
                          child: Icon(
                            Icons.add,
                            size: 16,
                            color: AppColor.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "MY status",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: Text(
                        "Tap to add status update",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w300),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 15.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Recent updates",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: infoData.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                            color: AppColor.lightGreenDark, width: 3)),
                    child: CircleAvatar(
                      radius: 24,
                      backgroundImage:
                         infoData[index].userImage
                    ),
                  ),
                  title: Text(
                    infoData[index].userName.toString(),
                    style: const TextStyle(fontSize: 16),
                  ),
                  subtitle: Text(
                    'Today ${infoData[index].time.toString()}',
                    style: const TextStyle(fontSize: 13),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
