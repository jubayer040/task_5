// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class TicketTag {
  final String id;
  final String tag;
  const TicketTag({required this.id, required this.tag});

  TicketTag copyWith({String? id, String? tag}) {
    return TicketTag(id: id ?? this.id, tag: tag ?? this.tag);
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': id, 'tag': tag};
  }

  factory TicketTag.fromMap(Map<String, dynamic> map) {
    return TicketTag(id: map['id'].toString(), tag: map['tag'].toString());
  }

  String toJson() => json.encode(toMap());

  factory TicketTag.fromJson(dynamic source) =>
      TicketTag.fromMap(source as Map<String, dynamic>);
}
