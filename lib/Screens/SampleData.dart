import 'package:flutter/material.dart';

class Info {
  String? id;
  AssetImage? userImage;
  String? userName;
  String? message;
  String? time;
  bool? received;
  bool? videoCall;

  Info({
    this.id,
    this.userImage,
    this.userName,
    this.message,
    this.time,
    this.received,
    this.videoCall,
  });
}

List<Info> infoData = [
  Info(
    id: "1",
    userImage: const AssetImage("assets/images/pexels2.jpg"),
    userName: 'Benz Ranawat',
    time: '3:32 PM',
    message: "Hey, how are you doing?",
    received: true,
    videoCall: false,
  ),
  Info(
     id: "2",
    userImage: const AssetImage("assets/images/avatar8.png"),
    userName: 'Ratan Tata',
    time: '3:32 PM',
    message: "How are you old man",
    received: false,
    videoCall: false,
  ),
  Info(
     id: "3",
    userImage: const AssetImage("assets/images/pexels4.jpg"),
    userName: 'John Doe',
    time: '2:12 AM',
    message: "Hello, whats up",
    received: true,
    videoCall: false,
  ),
  Info(
     id: "4",
    userImage: const AssetImage("assets/images/pexels3.jpg"),
    userName: 'John Henry',
    time: '1:00 PM',
    message: "Hey Man, Are you coming for movie tonight and let have some fun?",
    received: true,
    videoCall: true,
  ),
  Info(
     id: "5",
    userImage: const AssetImage("assets/images/avatar4.png"),
    userName: 'MR. Mark',
    time: '12:00 AM',
    message: "Lets develop meta",
    received: true,
    videoCall: false,
  ),
  Info(
     id: "6",
    userImage: const AssetImage("assets/images/pexels7.jpg"),
    userName: 'Sunder Pichai',
    time: '9:33 PM',
    message: "Have some coffee now",
    received: false,
    videoCall: false,
  ),
  Info(
     id: "7",
    userImage: const AssetImage("assets/images/pexels8.jpg"),
    userName: 'Bond',
    time: '6:42 PM',
    message: "New gun collections arrived",
    received: false,
    videoCall: false,
  ),
  Info(
     id: "8",
    userImage: const AssetImage("assets/images/avatar7.png"),
    userName: 'Jhonny Depp',
    time: '6:12 PM',
    message: "Lets sail the boat",
    received: false,
    videoCall: true,
  ),
  Info(
     id: "9",
    userImage: const AssetImage("assets/images/pexels9.jpg"),
    userName: 'Play God....🏃🏻‍♂️...',
    time: '2:22 AM',
    message: "New gun collections arrived",
    received: true,
    videoCall: true,
  ),
  Info(
     id: "10",
    userImage: const AssetImage("assets/images/avatar1.png"),
    userName: 'Mickel Jaskson',
    time: '1:02 AM',
    message:
        "Release new song on day after tomorrow @ sharp 12:00 Am, Fan are you to listen your music eagarly",
    received: false,
    videoCall: true,
  ),
  Info(
     id: "11",
      userImage: const AssetImage("assets/images/pexels1.jpg"),
      userName: 'Scarlett',
      time: '12:00 AM',
      message: "I Love You ❤️",
      received: true,
      videoCall: true),
  Info(
     id: "12",
    userImage: const AssetImage("assets/images/pexels10.jpg"),
    userName: 'Dad',
    time: '1:30 AM',
    message: "Where aru are you",
    received: true,
    videoCall: false,
  ),
];
