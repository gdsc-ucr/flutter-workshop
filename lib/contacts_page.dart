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
      body: ListView.builder(
        itemBuilder: (context, index) {
          final contact = contactList[index];

          return ContactItem(
            name: '${contact.firstName} ${contact.lastName}',
            imageUrl: contact.imageUrl,
          );
        },
        itemCount: contactList.length,
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
