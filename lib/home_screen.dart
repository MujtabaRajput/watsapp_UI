import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Watsapp'),
            bottom: TabBar(tabs: [
              Tab(
                child: Icon(Icons.camera_alt),
              ),
              Tab(
                child: Text('chats'),
              ),
              Tab(
                child: Text('status'),
              ),
              Tab(
                child: Text('calls'),
              ),
            ]),
            actions: [
              Icon(Icons.search),
              SizedBox(
                width: 15,
              ),
              PopupMenuButton(
                  icon: Icon(Icons.more_vert_outlined),
                  itemBuilder: (
                    context,
                  ) =>
                      [
                        PopupMenuItem(value: 1, child: Text('new group')),
                        PopupMenuItem(value: 2, child: Text('new broadcast')),
                        PopupMenuItem(value: 1, child: Text('linked device')),
                        PopupMenuItem(value: 1, child: Text('setting')),
                      ]),
              SizedBox(
                width: 15,
              ),
            ],
          ),
          body: TabBarView(children: [
            Text('camera'),
            ListView.builder(
              itemCount: 100,
              itemBuilder: ((context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrTXpp6AznluJ4vNjBjj87QvzUJ4UYUorVrw&usqp=CAU'),
                  ),
                  title: Text('talha anjum'),
                  subtitle: Text('where is stuff'),
                  trailing: Text('3:35 AM'),
                );
              }),
            ),
            ListView.builder(
              itemCount: 100,
              itemBuilder: ((context, index) {
                return ListTile(
                  leading: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.green,
                            width: 5,
                          )),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrTXpp6AznluJ4vNjBjj87QvzUJ4UYUorVrw&usqp=CAU'),
                      )),
                  title: Text('talha anjum'),
                  subtitle: Text('3:35 AM'),
                );
              }),
            ),
            ListView.builder(
              itemCount: 100,
              itemBuilder: ((context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrTXpp6AznluJ4vNjBjj87QvzUJ4UYUorVrw&usqp=CAU'),
                  ),
                  title: Text('talha anjum'),
                  subtitle:
                      Text(index / 2 == 0 ? '37 minute ago' : ' 50 min ago '),
                  trailing: Icon(
                      index / 2 == 0 ? Icons.phone : Icons.video_call_outlined),
                );
              }),
            ),
          ]),
        ),
      ),
    );
  }
}
