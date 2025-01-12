import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ListTileItem extends StatelessWidget {
  const ListTileItem({
    super.key,
    required this.title,
    required this.subtitle,
    required this.number,
    required this.documentId,
  });

  final String title;
  final String subtitle;
  final String number;
  final String documentId;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        leading: CircleAvatar(
          backgroundColor: Colors.pink,
          radius: 15,
          child: Center(
            child: Text(number),
          ),
        ),
        trailing: IconButton(
          onPressed: () {
            FirebaseFirestore.instance
                .collection("users")
                .doc(documentId)
                .delete();
          },
          icon: Icon(Icons.delete),
        ),
      ),
    );
  }
}
