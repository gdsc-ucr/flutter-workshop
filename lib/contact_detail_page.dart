import 'package:flutter/material.dart';
import 'package:flutter_workshop/constants/contact.dart';

class ContactDetailPage extends StatelessWidget {
  const ContactDetailPage({
    Key? key,
    required this.contact,
  }) : super(key: key);

  final Contact contact;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalle de Contacto'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Hero(
              tag: 'contact_image_${contact.id}',
              child: CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(contact.imageUrl),
              ),
            ),
            SizedBox(height: 10),
            Text('Nombre: ${contact.firstName} ${contact.lastName}'),
            SizedBox(height: 10),
            Text('Telefono: ${contact.phone}'),
            SizedBox(height: 10),
            Text('E-mail: ${contact.email}'),
          ],
        ),
      ),
    );
  }
}
