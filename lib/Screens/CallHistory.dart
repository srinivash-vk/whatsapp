import 'package:flutter/material.dart';
import 'package:whatsapp/Utils/AppColors.dart';
import 'dart:math' as math;
import 'SampleData.dart';

class CallHistroy extends StatelessWidget {
  const CallHistroy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: ListView.builder(
        itemCount: infoData.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              child: CircleAvatar(
                radius: 24,
                backgroundImage:(infoData[index].userImage),
              ),
            ),
            title: Text(infoData[index].userName.toString()),
            subtitle: Row(
              children: [
                (infoData[index].received?? false)?
                Transform.rotate(
                  angle: 90 * math.pi / 765,
                  child: const Icon(
                    Icons.arrow_downward_rounded,
                    color: Colors.red,
                    size: 20,
                  ),
                ):
                 Transform.rotate(
                  angle: 90 * math.pi / 765,
                  child: const Icon(
                    Icons.arrow_upward_rounded,
                    color: AppColor.lightGreenDark,
                    size: 20,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:5.0),
                  child: Text(infoData[index].time.toString()),
                ),
              ],
            ),
            // trailing: const const Icon(Icons.videocam,color: AppColor.lightGreenDark,,
            trailing: (infoData[index].videoCall?? false)? const Icon(Icons.videocam,color: AppColor.lightGreenDark,):const Icon(Icons.call,color: AppColor.lightGreenDark,) ,
          );
        },
      ),
    );
  }
}
