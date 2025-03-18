import 'dart:convert';
import 'package:task_5/core/util/my_enum.dart';
import 'package:task_5/features/ticket/data/repository/ticket_repo.dart';

class TicketItem {
  final int id;
  final TickerStatus currentStatus;
  final String name;
  final String details;
  final DateTime date;
  final TicketPriority ticketPriority;
  const TicketItem({
    required this.id,
    required this.currentStatus,
    required this.name,
    required this.details,
    required this.date,
    required this.ticketPriority,
  });

  TicketItem copyWith({
    int? id,
    TickerStatus? currentStatus,
    String? name,
    String? details,
    DateTime? date,
    TicketPriority? ticketPriority,
  }) {
    return TicketItem(
      id: id ?? this.id,
      currentStatus: currentStatus ?? this.currentStatus,
      name: name ?? this.name,
      details: details ?? this.details,
      date: date ?? this.date,
      ticketPriority: ticketPriority ?? this.ticketPriority,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'currentStatus': currentStatus.label,
      'name': name,
      'details': details,
      'date': date.millisecondsSinceEpoch,
      'ticketPriority': ticketPriority.label,
    };
  }

  factory TicketItem.fromMap(Map<String, dynamic> map) {
    return TicketItem(
      id: map['id'] as int,
      currentStatus: map['currentStatus'] as TickerStatus,
      name: map['name'].toString(),
      details: map['details'].toString(),
      date: DateTime.fromMillisecondsSinceEpoch(map['date'] as int),
      ticketPriority: map['ticketPriority'] as TicketPriority,
    );
  }

  String toJson() => json.encode(toMap());

  factory TicketItem.fromJson(dynamic source) =>
      TicketItem.fromMap(source as Map<String, dynamic>);

}
