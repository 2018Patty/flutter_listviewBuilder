import 'package:flutter/material.dart';
import 'package:listviewbuilder/user.dart';

class Home extends StatefulWidget {
  const Home({
    super.key,
  });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List users = [
    User(
        userid: '111',
        username: 'Pattaraporn@psu.ac.th',
        password: '123',
        fullname: 'Pattaraporn warintarawej'),
    User(
        userid: '112',
        username: 'Thomas@psu.ac.th',
        password: '123',
        fullname: 'Thomas Byden'),
    User(
        userid: '113',
        username: 'Somchai@psu.ac.th',
        password: '123',
        fullname: 'Somchai Jaidee'),
    User(
        userid: '114',
        username: 'Somporn@psu.ac.th',
        password: '123',
        fullname: 'Somporn Bangka'),
    User(
        userid: '115',
        username: 'Nadech@psu.ac.th',
        password: '123',
        fullname: 'Nadech Kugimiya'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView'),
        ),
        body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                child: Text(users[index].fullname[0]),
              ),
              title: Text(users[index].fullname),
              subtitle: Text(users[index].username),
              trailing: GestureDetector(
                onTap: () {
                  setState(() {
                    // var user = users[index].fullname;
                    users.removeAt(index);
                    // print('Delete user  ${user}');
                  });
                },
                child: const Icon(
                  Icons.delete,
                ),
              ),
            );
          },
        ));
  }
}
