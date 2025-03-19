
import 'dart:convert';

class ContactItem {
  final String id;
  final String name;
  final String email;
  final String contact;
  final String address;
  final String image;
  const ContactItem({
    required this.id,
    required this.name,
    required this.email,
    required this.contact,
    required this.address,
    required this.image,
  });

  ContactItem copyWith({
    String? id,
    String? name,
    String? email,
    String? contact,
    String? address,
    String? image,
  }) {
    return ContactItem(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      contact: contact ?? this.contact,
      address: address ?? this.address,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'email': email,
      'contact': contact,
      'address': address,
      'image': image,
    };
  }

  factory ContactItem.fromMap(Map<String, dynamic> map) {
    return ContactItem(
      id: map['id'].toString(),
      name: map['name'].toString(),
      email: map['email'].toString(),
      contact: map['contact'].toString(),
      address: map['address'].toString(),
      image: map['image'].toString(),
    );
  }

  String toJson() => json.encode(toMap());

  factory ContactItem.fromJson(dynamic source) => ContactItem.fromMap(source as Map<String, dynamic>);

}
