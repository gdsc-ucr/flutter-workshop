import 'package:flutter/material.dart';
import 'package:flutter_workshop/constants/constants.dart';
import 'package:flutter_workshop/constants/contact.dart';
import 'package:flutter_workshop/contact_detail_page.dart';

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

          return ContactItem(contact: contact);
        },
        itemCount: contactList.length,
      ),
    );
  }
}

class ContactItem extends StatelessWidget {
  const ContactItem({
    Key? key,
    required this.contact,
  }) : super(key: key);

  final Contact contact;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return ContactDetailPage(
                  contact: contact,
                );
              },
            ),
          );
        },
        title: Text('${contact.firstName} ${contact.lastName}'),
        trailing: CircleAvatar(
          backgroundImage: NetworkImage(contact.imageUrl),
        ),
      ),
    );
  }
}
