import 'package:flutter/material.dart';
import 'package:whatsapp/Screens/CallHistory.dart';
import 'package:whatsapp/Screens/StatusPage.dart';
import 'package:whatsapp/Screens/UsersList.dart';
import '../Utils/AppColors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =  TabController(length: 4, vsync: this, initialIndex: 1)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Align(
          alignment: Alignment.centerLeft,
          child: Text("whats app"),
        ),
        actions: [
          const Icon(Icons.search),
          PopupMenuButton(
            itemBuilder: _tabController?.index==1?(context) => [
              const PopupMenuItem(
                child: Text("New group"),
              ),
              const PopupMenuItem(
                child: Text("New broadcast"),
              ),
              const PopupMenuItem(
                child: Text("Linked devices"),
              ),
              const PopupMenuItem(
                child: Text("Starred message"),
              ),
              const PopupMenuItem(
                child: Text("Payments"),
              ),
              const PopupMenuItem(
                child: Text("Settings"),
              ),
            ]
              :_tabController?.index==2?(context) => [
              const PopupMenuItem(
                child: Text("Status privacy"),
              ),
              const PopupMenuItem(
                child: Text("Settings"),
              ),
              ]
               :_tabController?.index==3?(context) => [
                const PopupMenuItem(
                child: Text("Clear cal log"),
              ),
              const PopupMenuItem(
                child: Text("Settings"),
              ),
               ]:(context) => []
          ),
        ],
        bottom: TabBar(
            controller: _tabController,
            unselectedLabelColor: Colors.grey[300],
            unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w700),
            labelStyle: const TextStyle(fontWeight: FontWeight.bold),
            indicatorColor: AppColor.white,
            tabs: const [
              Tab(
                icon: Icon(Icons.camera_alt),
              ),
              Tab(
                text: "Chats",
              ),
              Tab(
                text: "Status",
              ),
              Tab(
                text: "Calls",
              ),
            ]),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Container(
            color: Colors.black,
          ),
          UsersList(),
          const StatusPage(),
          const CallHistroy()
        ],
      ),
      floatingActionButton: _tabController?.index == 0
          ? FloatingActionButton(
              backgroundColor: AppColor.lightGreenDark,
              onPressed: () {},
              child: const Icon(
                Icons.camera,
                color: Colors.white,
              ),
            )
          : _tabController?.index == 1
              ? FloatingActionButton(
                  backgroundColor: AppColor.lightGreenDark,
                  onPressed: () {},
                  child: const Icon(
                    Icons.message,
                    color: Colors.white,
                  ),
                )
              : _tabController?.index == 2
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        SizedBox(
                          height: 45.0,
                          width: 45.0,
                          child: FloatingActionButton(
                            onPressed: () {},
                            backgroundColor: Colors.white,
                            child: const Icon(
                              Icons.edit,
                              color: Colors.blueGrey,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        FloatingActionButton(
                          backgroundColor: AppColor.lightGreenDark,
                          onPressed: () {},
                          child: const Icon(
                            Icons.camera_alt,
                            color: Colors.white,
                          ),
                        )
                      ],
                    )
                  : FloatingActionButton(
                      backgroundColor: AppColor.lightGreenDark,
                      onPressed: () {},
                      child: const Icon(
                        Icons.add_call,
                        color: Colors.white,
                      ),
                    ),
    );
  }
}
