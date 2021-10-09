import 'package:flutter/material.dart';
import 'package:flutter_workshop/constants/constants.dart';

class ContactsPage extends StatelessWidget {
  const ContactsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contactos'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ContactItem(
              name: contactList[0].firstName,
              imageUrl: contactList[0].imageUrl,
            ),
            ContactItem(
              name: contactList[1].firstName,
              imageUrl: contactList[1].imageUrl,
            ),
            ContactItem(
              name: contactList[2].firstName,
              imageUrl: contactList[2].imageUrl,
            ),
          ],
        ),
      ),
    );
  }
}

class ContactItem extends StatelessWidget {
  const ContactItem({
    Key? key,
    required this.name,
    required this.imageUrl,
  }) : super(key: key);

  final String name;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(name),
        trailing: CircleAvatar(
          backgroundImage: NetworkImage(imageUrl),
        ),
      ),
    );
  }
}
