import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  const Chats({Key? key}) : super(key: key);
  Widget ChatDetails(Name, subTitle, Time, NumberOfMessage) {
    return ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5fGKks_ZOlVCtiZQV6ETawu9L0xk74WbsvQ&usqp=CAU"),
          radius: 30,
        ),
        title: Text(
          Name,
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
        ),
        subtitle: Row(
          children: [
            Icon(
              Icons.done_all,
              color: Colors.blue,
              size: 20,
            ),
            SizedBox(
              width: 5,
            ),
            Text(subTitle),
          ],
        ),
        trailing: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 7.0),
              child: Text(
                Time,
                style: TextStyle(color: Colors.green),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40.0),
              child: CircleAvatar(
                child: Text(
                  NumberOfMessage,
                  style: TextStyle(color: Colors.white),
                ),
                backgroundColor: Colors.green,
                radius: 10,
              ),
            )
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (_) {
          _.disallowGlow();
          return true;
        },
        child: ListView(
          children: [
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {},
        child: Icon(
          Icons.chat_bubble,
          color: Colors.white,
        ),
      ),
    );
  }
}
